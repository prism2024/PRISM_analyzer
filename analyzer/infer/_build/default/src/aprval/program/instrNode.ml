open! IStd
open! Vocab
module F = Format
module L = Logging
module Hashtbl = Caml.Hashtbl

module InstrNode = struct
  type t = {inode: InterNode.t; instr: Sil.instr} [@@deriving compare]

  let compare x y =
    if InterNode.equal x.inode y.inode then Sil.compare_instr x.instr y.instr
    else InterNode.compare x.inode y.inode


  let equal = [%compare.equal: t]

  let equal_except_vflag x y =
    InterNode.equal x.inode y.inode && equal_instr_except_vflag x.instr y.instr


  let make inode instr = {inode; instr}

  let of_pnode pnode instr =
    let inode = InterNode.of_pnode pnode in
    {inode; instr}


  let dummy =
    {inode= InterNode.dummy (Procname.from_string_c_fun "FL4APR_DUMMY"); instr= Sil.skip_instr}


  let default = dummy

  let dummy_entry =
    {inode= InterNode.dummy (Procname.from_string_c_fun "FL4APR_entry"); instr= Sil.skip_instr}


  let dummy_exit =
    {inode= InterNode.dummy (Procname.from_string_c_fun "FL4APR_exit"); instr= Sil.skip_instr}


  let dummy_of str = {dummy with inode= InterNode.dummy (Procname.from_string_c_fun str)}

  let dummy_of_proc proc = {inode= InterNode.dummy proc; instr= Sil.skip_instr}

  let inode_of {inode} = inode

  let get_proc_name {inode} = InterNode.get_proc_name inode

  let get_instr {instr} = instr

  let get_instrs {instr} = Instrs.singleton instr

  let get_loc {inode} = InterNode.get_loc inode

  let get_line t = Location.(get_loc t).line

  let get_source t = Location.(get_loc t).file

  let list_of_pnode pnode =
    let inode = InterNode.of_pnode pnode in
    let instr_list = get_instrs_list pnode in
    List.map instr_list ~f:(fun instr -> {inode; instr})


  let pp fmt {inode; instr} =
    F.fprintf fmt "<%a, %a, %a>" InterNode.pp inode
      (Sil.pp_instr ~print_types:true Pp.text)
      instr SourceFile.pp (InterNode.get_loc inode).Location.file


  let vertex_name {inode; instr} =
    F.asprintf "\"%s-%a\"" (InterNode.to_string inode)
      (Sil.pp_instr ~print_types:true Pp.text)
      instr


  let is_first_instr {inode; instr} =
    let instrs = InterNode.get_instrs inode in
    if Instrs.is_empty instrs then true else Sil.equal_instr instr (Instrs.nth_exn instrs 0)


  let is_last_instr {inode; instr} =
    let instrs = InterNode.get_instrs inode in
    if Instrs.is_empty instrs then true
    else Sil.equal_instr instr (Option.value_exn (Instrs.last instrs))


  let is_intermediate ({instr} as node) =
    match instr with
    | (Load {e= Lvar pv} | Store {e1= Lvar pv}) when Pvar.is_frontend_tmp pv ->
        false
    | _ ->
        not (is_first_instr node)


  let is_entry {inode} = InterNode.is_entry inode

  let is_exit {inode} = InterNode.is_exit inode

  let get_first_from pnode =
    let instrs = Procdesc.Node.get_instrs pnode in
    if Instrs.nth_exists instrs 0 then of_pnode pnode (Instrs.nth_exn instrs 0)
    else of_pnode pnode Sil.skip_instr


  let pnode_of {inode} = InterNode.pnode_of inode

  let get_succs (n : t) =
    let pnode = pnode_of n in
    let instrs = get_instrs_list pnode in
    if is_last_instr n then List.map (Procdesc.Node.get_succs pnode) ~f:get_first_from
    else
      match List.findi instrs ~f:(fun _ instr' -> Sil.equal_instr n.instr instr') with
      | Some (idx, _) ->
          let instr = List.nth_exn instrs (idx + 1) in
          let inode = n.inode in
          [{inode; instr}]
      | None ->
          L.(die InternalError)
            "No next of %a@. - Intrs: %a@." pp n
            (Pp.seq (Sil.pp_instr ~print_types:false Pp.text))
            instrs


  let get_all_succs (n : t) =
    let pnode = pnode_of n in
    let instrs = get_instrs_list pnode in
    if is_last_instr n then []
    else
      match List.findi instrs ~f:(fun _ instr' -> Sil.equal_instr n.instr instr') with
      | Some (idx, _) ->
          let inode = n.inode in
          List.filteri ~f:(fun idx' _ -> idx' > idx) instrs
          |> List.map ~f:(fun instr -> {inode; instr})
      | None ->
          L.(die InternalError)
            "No next of %a@. - Intrs: %a@." pp n
            (Pp.seq (Sil.pp_instr ~print_types:false Pp.text))
            instrs


  let get_all_preds (n : t) =
    let pnode = pnode_of n in
    let instrs = get_instrs_list pnode in
    if is_first_instr n then []
    else
      match List.findi instrs ~f:(fun _ instr' -> Sil.equal_instr n.instr instr') with
      | Some (idx, _) ->
          let inode = n.inode in
          List.filteri ~f:(fun idx' _ -> idx' < idx) instrs
          |> List.map ~f:(fun instr -> {inode; instr})
      | None ->
          L.(die InternalError)
            "No pred of %a@. - Intrs: %a@." pp n
            (Pp.seq (Sil.pp_instr ~print_types:false Pp.text))
            instrs


  let get_exn (n : t) =
    let exn_pnodes = Procdesc.Node.get_exn (InterNode.pnode_of n.inode) in
    List.map exn_pnodes ~f:get_first_from


  let get_kind {inode} = InterNode.get_kind inode

  (* TODO:??? This introduces Out-Of-Memory
     * let _hash : (t, int) Hashtbl.t = Hashtbl.create 1214

     * let hash x =
     *   match Hashtbl.find_opt _hash x with
     *   | Some cached ->
     *       cached
     *   | _ ->
     *       let hashed = Hashtbl.hash (vertex_name x) in
     *       Hashtbl.add _hash x hashed ; hashed
  *)
  let hash x = Hashtbl.hash (vertex_name x)
end

include InstrNode
module Map = PrettyPrintable.MakePPMap (InstrNode)
module Set = PrettyPrintable.MakePPSet (InstrNode)
