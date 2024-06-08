Caml1999N028����            /src/IR/Tenv.mli����  )]  $  $  �����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��/src/IR/Tenv.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@�����*ocaml.text���@@ ���@@ �A�������? Module for Type Environments. �@��J � ��J � �@@@@��J � ��J � �@@��!J � ��"J � �@��$J � ��%J � �@���A�    �!t��.M�/M@@@@A@���)ocaml.doc���@@ ���@@ �A�������< Type for type environment. �@��@L � ��AL �@@@@��CL � ��DL �@@��FL � ��GL �@@��IM�JM@@��LM�MM@���Р&create��UO�VO#@��@����$unit��_O&�`O*@@��bO&�cO*@@@����!t��jO.�kO/@@��mO.�nO/@@@��pO&�qO/@@@@���B��@@ ��@@ �A�������	  Create a new type environment. @���P00��P0U@@@@���P00��P0U@@���P00��P0U@@���O��O/@���O��O/@���Р$load���RW[��RW_@��@�����*SourceFile!t���RWb��RWn@@���RWb��RWn@@@����&option���RWt��RWz@�����!t���RWr��RWs@@���RWr��RWs@@@@���RWr��RWz@@@���RWb��RWz@@@@������V@@ ��W@@ �A�������	+ Load a type environment for a source file a@���S{{��S{�@@@@���S{{��S{�@@���S{{��S{�@@���RWW��RWz@���RWW��RWz@���Р;store_debug_file_for_source���U����U��@��@�����*SourceFile!t���U����U��@@���U����U��@@@��@����!t���U����U��@@��U���U��@@@����$unit��	U���
U��@@��U���U��@@@��U���U��@@@��U���U��@@@@@��U���U��@��U���U��@���Р$read��!W���"W��@��@�����"DB(filename��-W���.W� @@��0W���1W� @@@����&option��8W��9W�@�����!t��AW��BW�@@��DW��EW�@@@@��GW��HW�@@@��JW���KW�@@@@������@@ ���@@ �A�������	8 read and return a type environment from the given file �@��[X�\XJ@@@@��^X�_XJ@@��aX�bXJ@@��dW���eW�@��gW���hW�@���Р+load_global��pZLP�qZL[@��@����$unit��zZL^�{ZLb@@��}ZL^�~ZLb@@@����&option���ZLh��ZLn@�����!t���ZLf��ZLg@@���ZLf��ZLg@@@@���ZLf��ZLn@@@���ZL^��ZLn@@@@���i��.@@ ��/@@ �A�������	) load the global type environment (Java) 9@���[oo��[o�@@@@���[oo��[o�@@���[oo��[o�@@���ZLL��ZLn@���ZLL��ZLn@���Р,store_global���]����]��@��@����!t���]����]��@@���]����]��@@@����$unit���]����]��@@���]����]��@@@���]����]��@@@@������o@@ ��p@@ �A�������	' save a global type environment (Java) z@���^����^��@@@@���^����^��@@���^����^��@@���]����]��@���]����]��@���Р&lookup���`����`��@��@����!t��`���	`��@@��`���`��@@@��@������#Typ$Name!t��`���`�@@��`���`�@@@����&option��$`��%`�@������&Struct!t��/`�
�0`�@@��2`�
�3`�@@@@��5`�
�6`�@@@��8`���9`�@@@��;`���<`�@@@@������@@ ���@@ �A�������	0 Look up a name in the global type environment. �@��La�MaO@@@@��Oa�PaO@@��Ra�SaO@@��U`���V`�@��X`���Y`�@���Р)mk_struct��acQU�bcQ^@��@����!t��kdaf�ldag@@��ndaf�odag@@@���'default�����&Struct!t��|ehv�}eh~@@��ehv��eh~@@@���&fields�����&Struct&fields���f���f�@@���f���f�@@@���'statics�����&Struct&fields���g����g��@@���g����g��@@@���'methods����$list���h����h��@������(Procname!t���h����h��@@���h����h��@@@@���h����h��@@@���5exported_objc_methods����$list���i����i��@������(Procname!t���i����i��@@���i����i��@@@@���i����i��@@@���&supers����$list���j ��j @�������#Typ$Name!t���j ��j @@���j ��j @@@@���j ��j @@@���.objc_protocols����$list��k=�kA@�������#Typ$Name!t��k2�k<@@��k2�k<@@@@��k2�kA@@@���&annots������%Annot$Item!t��)lBO�*lB[@@��,lBO�-lB[@@@���/java_class_info�����&Struct/java_class_info��:m\r�;m\�@@��=m\r�>m\�@@@���%dummy����$bool��In���Jn��@@��Ln���Mn��@@@��@������#Typ$Name!t��Zo���[o��@@��]o���^o��@@@�����&Struct!t��gp���hp��@@��jp���kp��@@@��mo���np��@@@��pn���qp��@@@��sm\a�tp��@@@��vlBG�wp��@@@��yk"�zp��@@@��|j �}p��@@@��i����p��@@@���h����p��@@@���g����p��@@@���f���p��@@@���ehm��p��@@@���daf��p��@@@@���`��%@@ ��&@@ �A�������	1 Construct a struct_typ, normalizing field types 0@���q����q��@@@@���q����q��@@���q����q��@@���cQQ��p��@���cQQ��p��@���Р)add_field���s����s��@��@����!t���s� ��s�@@���s� ��s�@@@��@������#Typ$Name!t���s���s�@@���s���s�@@@��@�����&Struct%field���s���s�@@���s���s�@@@����$unit���s�#��s�'@@���s�#��s�'@@@���s���s�'@@@���s���s�'@@@���s� ��s�'@@@@���ǰ��@@ ���@@ �A�������	? Add a field to a given struct in the global type environment. �@��t((�t(l@@@@��	t((�
t(l@@��t((�t(l@@��s���s�'@��s���s�'@���Р"pp��vnr�vnt@��@�����&Format)formatter��'vnw�(vn�@@��*vnw�+vn�@@@��@����!t��4vn��5vn�@@��7vn��8vn�@@@����$unit��?vn��@vn�@@��Bvn��Cvn�@@@��Evn��Fvn�@@@��Hvnw�Ivn�@@@@������@@ ���@@ �A�������: print a type environment �@��Yw���Zw��@@@@��\w���]w��@@��_w���`w��@@��bvnn�cvn�@��evnn�fvn�@���A�    �(per_file��oy���py��@@@��Р&Global��wy���xy��@�@@��{y���|y��@@�Р)FileLocal���y����y��@������!t���y����y��@@���y����y��@@@@@���y����y��@@@A@@���y����y��@@���y����y��@���Р+pp_per_file���{����{��@��@�����&Format)formatter���{����{�@@���{����{�@@@��@����(per_file���{���{�@@���{���{�@@@����$unit���{���{�@@���{���{�@@@���{���{�@@@���{����{�@@@@������e@@ ��f@@ �A�������	! print per file type environment p@���|��|<@@@@���|��|<@@���|��|<@@���{����{�@���{����{�@���Р%merge���~>B��~>G@���#src����!t�� ~>N�~>O@@��~>N�~>O@@@���#dst����!t��~>W�~>X@@��~>W�~>X@@@����$unit��~>\�~>`@@��~>\�~>`@@@�� ~>S�!~>`@@@��#~>J�$~>`@@@@�������@@ ���@@ �A�������	J Merge [src] into [dst] possibly overwriting pre existing procs in [dst]. �@��4aa�5a�@@@@��7aa�8a�@@��:aa�;a�@@��=~>>�>~>`@��@~>>�A~>`@���Р.merge_per_file��I A���J A��@���#src����(per_file��U A���V A��@@��X A���Y A��@@@���#dst����(per_file��d A���e A��@@��g A���h A��@@@����(per_file��o A���p A��@@��r A���s A��@@@��u A���v A��@@@��x A���y A��@@@@���J��@@ ��@@ �A�������	~ Best-effort merge of [src] into [dst]. If a procedure is both in [dst] and [src], the one in
    [dst] will get overwritten. @��� B���� CQs@@@@��� B���� CQs@@��� B���� CQs@@��� A���� A��@��� A���� A��@���Р.resolve_method��� Euy�� Eu�@���-method_exists��@�����(Procname!t��� F���� F��@@��� F���� F��@@@��@����$list��� F���� F��@������(Procname!t��� F���� F��@@��� F���� F��@@@@��� F���� F��@@@����$bool��� F���� F��@@��� F���� F��@@@��� F���� F��@@@��� F���� F��@@@��@����!t��� G���� G��@@��� G���� G��@@@��@������#Typ$Name!t��� H���� H��@@��� H���� H��@@@��@�����(Procname!t�� I��� I��@@��
 I��� I��@@@����&option�� J��� J�@������(Procname!t�� J��� J��@@��  J���! J��@@@@��# J���$ J�@@@��& I���' J�@@@��) H���* J�@@@��, G���- J�@@@��/ F���0 J�@@@@������@@ ���@@ �A�������
  � [resolve_method ~method_exists tenv class_name procname] tries to resolve [procname] to a method
    in [class_name] or its super-classes, that is non-virtual (non-Java-interface method).
    [method_exists adapted_procname methods] should check if [adapted_procname] ([procname] but with
    its class potentially changed to some [other_class]) is among the [methods] of [other_class]. �@��@ K�A N	(	�@@@@��C K�D N	(	�@@��F K�G N	(	�@@��I Euu�J J�@��L Euu�M J�@������&SQLite��V P	�	��W P	�	�@�������+SqliteUtils$Data��b P	�	��c P	�	�@��e P	�	��f P	�	�@@����!t��m P	�	��n P	�	�@    ���r P	�	��s P	�	�@@@@A�����(per_file��{ P	�	��| P	�	�@@��~ P	�	�� P	�	�@@@@��� P	�	��� P	�	�@@��� P	�	��� P	�	�@@@��� P	�	��� P	�	�@��� P	�	��� P	�	�@@