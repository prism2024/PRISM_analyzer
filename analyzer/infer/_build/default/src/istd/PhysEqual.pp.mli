Caml1999N028����            6src/istd/PhysEqual.mli����  �  #  �  6�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��6src/istd/PhysEqual.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@�����*ocaml.text���@@ ���@@ �A�������
  � Helpers function to enforce physical equality.

    Let suppose [construct/deconstruct] is a 1-level-allocation OCaml construction/deconstruction,
    such as variant type, tuple or record construction. Instead of writing

    {[
      let a = deconstruct a0 in
      let b = deconstruct b0 in
      let res = f a b in
      if phys_equal res a then a0 else if phys_equal res b then b0 else construct res
    ]}

    Simply write

    {[ PhysEqual.optim2 ~res:(construct (f a b)) a0 b0 ]} �@��J � ��X|�@@@@��J � ��X|�@@��!J � ��"X|�@��$J � ��%X|�@���Р&optim1��-Z���.Z��@���#res��!a��7Z���8Z��@@@��@��!a��?Z���@Z��@@@��!a��EZ���FZ��@@@��HZ���IZ��@@@��KZ���LZ��@@@@@��NZ���OZ��@��QZ���RZ��@���Р&optim2��Z\���[\��@���#res��!a��d\���e\��@@@��@��!a��l\���m\��@@@��@��!a��t\���u\��@@@��!a��z\���{\� @@@��}\���~\� @@@���\����\� @@@���\����\� @@@@@���\����\� @���\����\� @@