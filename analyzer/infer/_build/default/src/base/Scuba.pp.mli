Caml1999N028����            2src/base/Scuba.mli����  �     �  Ϡ����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��2src/base/Scuba.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@�����*ocaml.text���@@ ���@@ �A�������
  G Low-level Scuba logging functionality. Provides functionality to log anything to any scuba
    table. (Note that Scuba is a schema-free storage, so it won't require any changes). Don't use
    this module directly for logging to tables with known structure. Use high-level functions that
    are aware of the table structure. �@��J � ��M�@@@@��J � ��M�@@��!J � ��"M�@��$J � ��%M�@���A�    �%table��.P,1�/P,6@@@��Р+InferEvents��6P,9�7P,D@�@@��:P,9�;P,D@@@A@���)ocaml.doc���@@ ���@@ �A�������/ A scuba table �@��LO�MO+@@@@��OO�PO+@@��RO�SO+@@��UP,,�VP,D@@��XP,,�YP,D@���A�    �&sample��bSkp�cSkv@@@@A@���(���@@ ���@@ �A�������? A sample to be added to Scuba @��sRFF�tRFj@@@@��vRFF�wRFj@@��yRFF�zRFj@@��|Skk�}Skv@@��Skk��Skv@���Р*new_sample���Ux|��Ux�@���$time����&option���Ux���Ux�@�����#int���Ux���Ux�@@���Ux���Ux�@@@@���Ux���Ux�@@@����&sample���Ux���Ux�@@���Ux���Ux�@@@���Ux���Ux�@@@@���w��H@@ ��I@@ �A�������	w Create an empty sample with given creation timestamp. If time is not specified, corresponds to
    current timestamp. S@���V����W@@@@���V����W@@���V����W@@���Uxx��Ux�@���Uxx��Ux�@���Р'add_int���Y!%��Y!,@���$name����&string���Y!4��Y!:@@���Y!4��Y!:@@@���%value����#int���Y!D��Y!G@@���Y!D��Y!G@@@��@����&sample���Y!K� Y!Q@@��Y!K�Y!Q@@@����&sample��
Y!U�Y![@@��Y!U�Y![@@@��Y!K�Y![@@@��Y!>�Y![@@@��Y!/�Y![@@@@���ܰ��@@ ���@@ �A�������	p Set a new integer field and its value to the sample. Overwrites if a field with this name was
    already set. �@��'Z\\�([��@@@@��*Z\\�+[��@@��-Z\\�.[��@@��0Y!!�1Y![@��3Y!!�4Y![@���Р*add_normal��<]���=]��@���$name����&string��H]���I]��@@��K]���L]��@@@���%value����&string��W]���X]��@@��Z]���[]��@@@��@����&sample��d]��e]�	@@��g]��h]�	@@@����&sample��o]��p]�@@��r]��s]�@@@��u]��v]�@@@��x]���y]�@@@��{]���|]�@@@@���A��@@ ��@@ �A�������	� Set a new string (normal in Scuba terminology) field and its value to the sample. Overwrites if
    a field with this name was already set. @���^��_x�@@@@���^��_x�@@���^��_x�@@���]����]�@���]����]�@���Р*add_tagset���a����a��@���$name����&string���a����a��@@���a����a��@@@���%value����$list���a����a��@�����&string���a����a��@@���a����a��@@@@���a����a��@@@��@����&sample���a����a��@@���a����a��@@@����&sample���a����a��@@���a����a��@@@���a����a��@@@���a����a��@@@���a����a��@@@@�������@@ ���@@ �A�������	� Set a new set of strings (tagset in Scuba terminology) field and its value to the sample.
    Overwrites if a field with this name was already set. �@���b����cL�@@@@�� b���cL�@@��b���cL�@@��a���a��@��	a���
a��@���Р#log��e���e��@��@����%table��e���e��@@��e��� e��@@@��@����$list��)e���*e��@�����&sample��2e���3e��@@��5e���6e��@@@@��8e���9e��@@@����$unit��@e���Ae��@@��Ce���De��@@@��Fe���Ge��@@@��Ie���Je��@@@@������@@ ���@@ �A�������	D The main function. Log a collection of samples to the given table. �@��Zf���[f��@@@@��]f���^f��@@��`f���af��@@��ce���de��@��fe���ge��@@