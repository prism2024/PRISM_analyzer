Caml1999N028����            8src/base/ProcessPool.mli����  M  w  �  8�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��8src/base/ProcessPool.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@������-TaskGenerator��J � ��J � �@�����A�    �!t��L�L@����!a��%L�&L@@@B����!b��-L�.L@@@B@@��Р/remaining_tasks��5M!'�6M!6@@��@����$unit��?M!8�@M!<@@��BM!8�CM!<@@@����#int��JM!@�KM!C@@��MM!@�NM!C@@@��PM!8�QM!C@@@��SM!'�TP��@���)ocaml.doc���@@ ���@@ �A�������	m number of tasks remaining to complete -- only used for reporting, so imprecision is
              not a bug �@��eNDN�fO��@@@@��hNDN�iO��@@��kNDN�lO��@@�Р(is_empty��rP���sP��@@��@����$unit��|P���}P��@@��P����P��@@@����$bool���P����P��@@���P����P��@@@���P����P��@@@���P����R6;@���=��'@@ ��(@@ �A�������	H when should the main loop of the task manager stop expecting new tasks 2@���Q����Q�5@@@@���Q����Q�5@@���Q����Q�5@@�Р(finished���R6<��R6D@@���&result����&option���R6P��R6V@���!b���R6M��R6O@@@@���R6M��R6V@@@��@��!a���R6Z��R6\@@@����$unit���R6`��R6d@@���R6`��R6d@@@���R6Z��R6d@@@���R6F��R6d@@@���R6<��W��@������w@@ ��x@@ �A�������
  L Process pool calls [finished result:r x] when a worker finishes item [x]. result is
              None when the item was completed successfully and Some pname when it failed because it
              could not lock pname. This is only called if [next ()] has previously returned
              [Some x] and [x] was sent to a worker. �@���Seo��V��@@@@���Seo��V��@@���Seo��V��@@�Р$next���W����W��@@��@����$unit��W���	W��@@��W���W��@@@����&option��W���W��@���!a��W���W��@@@@��W���W��@@@�� W���!W��@@@��#W���$W��@���а��@@ ���@@ �A�������
  h [next ()] generates the next work item. If [is_empty ()] is true then [next ()] must
              return [None]. However, it is OK to for [next ()] to return [None] when [is_empty] is
              false. This corresponds to the case where there is more work to be done, but it is not
              schedulable until some already scheduled work is finished. �@��4X���5[V@@@@��7X���8[V@@��:X���;[V@@@A@������@@ ���@@ �A�������	! abstraction for generating jobs �@��KK � ��LK �@@@@��NK � ��OK �@@��QK � ��RK �@@��TL�U[X@@��WL�X[X@���Р%chain��`]Z`�a]Ze@��@����!t��j]Zq�k]Zr@���!a��q]Zi�r]Zk@@@���!b��x]Zm�y]Zo@@@@��{]Zh�|]Zr@@@��@����!t���]Z��]Z�@���!a���]Zw��]Zy@@@���!b���]Z{��]Z}@@@@���]Zv��]Z�@@@����!t���]Z���]Z�@���!a���]Z���]Z�@@@���!b���]Z���]Z�@@@@���]Z���]Z�@@@���]Zv��]Z�@@@���]Zh��]Z�@@@@���b��L@@ ��M@@ �A�������? chain two generators in order W@���^����^��@@@@���^����^��@@���^����^��@@���]Z\��]Z�@���]Z\��]Z�@���Р'of_list���`����`��@��@����$list���`����`��@���!a���`����`��@@@@���`����`��@@@����!t���`����`��@���!a���`����`��@@@���!b��`���`��@@@@��`���	`��@@@��`���`��@@@@�������@@ ���@@ �A�������	' schedule tasks out of a concrete list �@��a���a�@@@@��a��� a�@@��"a���#a�@@��%`���&`��@��(`���)`��@@��+J � ��,b@@@��.J � ��/b@��1J � ��2b@�����*ocaml.text���@@ ���@@ �A�������
  � Pool of parallel workers that can both receive tasks from the master process and start doing
    tasks on their own. Unix pipes are used for communication, all while refreshing a task bar
    periodically.

    Due to ondemand analysis, workers may do tasks unprompted (eg, when analysing a procedure, a
    process will typically end up analysing all its callees). Thus, children need to update the main
    process (which is in charge of the task bar) whenever they start analysing a new procedure, and
    whenever they resume analysing a previous procedure. This is more complicated than what, eg,
    `ParMap` can handle because of the bidirectional flow between children and parents.

    The children send "Ready" or "I'm working on task <some string>" messages that are used to
    respectively send them more tasks ("Do x") or update the task bar with the description provided
    by the child.

    See also {!module-ProcessPoolState}. �@��Ed�Fr	�	�@@@@��Hd�Ir	�	�@@��Kd�Lr	�	�@��Nd�Or	�	�@���A�    �!t��Xv
�
��Yv
�
�@���@��^v
�
��_v
�
�@@@B���@��dv
�
��ev
�
�@@@B���@��jv
�
��kv
�
�@@@B@@@A@�����@@ ��@@ �A�������	� A [('work, 'final) t] process pool accepts tasks of type ['work] and produces an array of
    results of type ['final]. ['work] and ['final] will be marshalled over a Unix pipe.@��{t	�	��|u
)
�@@@@��~t	�	��u
)
�@@���t	�	���u
)
�@@���v
�
���v
�
�@@���v
�
���v
�
�@���Р&create���x
�
���x
�
�@���$jobs����#int���y
�
���y
�
�@@���y
�
���y
�
�@@@���.child_prologue��@����$unit���z
�
���z
�
�@@���z
�
���z
�
�@@@����$unit���z
�
���z
�
�@@���z
�
���z
�
�@@@���z
�
���z
�
�@@@���!f��@��$work���{
�
���{
�
�@@@����&option���{
�
���{
�
�@���&result���{
�
���{
�
�@@@@���{
�
���{
�
�@@@���{
�
���{
�
�@@@���.child_epilogue��@����$unit���|
�	��|
�@@���|
�	��|
�@@@��%final���|
���|
�@@@���|
�	��|
�@@@���%tasks��@����$unit��}%�})@@��
}%�})@@@�����-TaskGenerator!t��}>�}M@���$work��}.�}3@@@���&result��"}5�#}<@@@@��%}-�&}M@@@��(}%�)}M@@@����!t��0~Om�1~On@���$work��7~OU�8~OZ@@@���%final��>~O\�?~Ob@@@���&result��E~Od�F~Ok@@@@��H~OT�I~On@@@��K}�L~On@@@��N|
�
��O~On@@@��Q{
�
��R~On@@@��Tz
�
��U~On@@@��Wy
�
��X~On@@@@������@@ ���@@ �A�������	@ Create a new pool of processes running [jobs] jobs in parallel �@��hoo�io�@@@@��koo�lo�@@��noo�oo�@@��qx
�
��r~On@��tx
�
��u~On@���Р#run��} A���~ A��@��@����!t��� A���� A��@��@��� A���� A��@@@���%final��� A���� A��@@@���&result��� A���� A��@@@@��� A���� A��@@@�����%Array!t��� A���� A��@�����&option��� A���� A��@���%final��� A���� A��@@@@��� A���� A��@@@@��� A���� A��@@@��� A���� A��@@@@���m��W@@ ��X@@ �A�������	� use the processes in the given process pool to run all the given tasks in parallel and return
    the results of the epilogues b@��� B���� CRu@@@@��� B���� CRu@@��� B���� CRu@@��� A���� A��@��� A���� A��@@