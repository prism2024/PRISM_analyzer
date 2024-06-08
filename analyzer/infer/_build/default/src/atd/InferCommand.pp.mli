Caml1999N028����            8src/atd/InferCommand.mli����  �    m  ܠ����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�����A�    �!t��8src/atd/InferCommand.mliI � ��I � �@@@��Р'Analyze��	J � ��
J � �@�@@��J � ��J � �@���)ocaml.doc���@@ ���@@ �A�������	* analyze previously captured source files �@��J � �� J �+@@@@��"J � ��#J �+@@��%J � ��&J �+@@�Р+AnalyzeJson��,K,0�-K,;@�@@��0K,.�1K,;@���#���@@ ���@@ �A�������	* analyze captured cfg and tenv json files �@��AK,=�BK,l@@@@��DK,=�EK,l@@��GK,=�HK,l@@�Р'Capture��NLmq�OLmx@�@@��RLmo�SLmx@���E���@@ ���@@ �A�������	\ capture compilation commands and translate source files into infer's intermediate language �@��cMy�dMy�@@@@��fMy�gMy�@@��iMy�jMy�@@�Р'Compile��pN���qN��@�@@��tN���uN��@���g��@@ ��@@ �A�������	m set up the infer environment then run the compilation commands without capturing the
          source files @���O����PLe@@@@���O����PLe@@���O����PLe@@�Р%Debug���Qfj��Qfo@�@@���Qfh��Qfo@������-@@ ��.@@ �A�������	- print information about internal structures 8@���Qfq��Qf�@@@@���Qfq��Qf�@@���Qfq��Qf�@@�Р'Explore���R����R��@�@@���R����R��@������O@@ ��P@@ �A�������7 explore infer reports Z@���R����R��@@@@���R����R��@@���R����R��@@�Р$Help���S����S��@�@@���S����S��@���Ͱ�q@@ ��r@@ �A�������	. documentation about various aspects of infer |@���S����S�@@@@���S����S�@@���S����S�@@�Р&Report���T��T@�@@���T��T@������@@ ���@@ �A�������	( post-process infer results and reports �@��T�TE@@@@��T�TE@@��T�TE@@�Р*ReportDiff��UFJ�UFT@�@@��UFH�UFT@������@@ ���@@ �A�������	- compute the difference of two infer reports �@��/UFV�0UF�@@@@��2UFV�3UF�@@��5UFV�6UF�@@�Р#Run��<V���=V��@�@@��@V���AV��@���3���@@ ���@@ �A�������	K orchestrate the capture, analysis, and reporting of a compilation command �@��QV���RV��@@@@��TV���UV��@@��WV���XV��@@�Р&APRVAL��^W���_W��@�@@��bW���cW��@���U���@@ ���@@ �A�������0 APRVAL driver *@��sW���tW�@@@@��vW���wW�@@��yW���zW�@@@A@���l��@@ ��@@ �A�������	# Main modes of operation for infer @���H � ���H � �@@@@���H � ���H � �@@���H � ���H � �@���(deriving���X��X@��������'compare���X��X@���X��X@@@@���X��X@@���X��X@@���I � ���X@@���I � ���X@�����������-ocaml.warning��&_none_A@ ��A@ �A�������#-32^@��A@ ��A@ �A@@@��A@ ��A@ �A@��A@ ��A@ �A���I � ���XA���Р'compare���I � ���I � �@��@�������I � ���I � �@@���I � ���I � �@@@��@��������I � ���I � �@@���I � ���I � �@@���+merlin.hide��=A@ ��>A@ �A�@���@@ ���@@ �A@����#int��
I � ��I � �A@��I � ��I � �A@@��I � ��I � �A@@��I � ��I � �A@@@@��I � ��X@��I � ��X@@��I � ��XA@��I � �� XA���)ocaml.doc��eA@ ��fA@ �A�������'@inline�@��pA@ ��qA@ �A@@@��sA@ ��tA@ �A@��vA@ ��wA@ �A���@��|A@ ��}A@ �A�@���@@ ���@@ �A@��DI � ��EXA���Р)of_string��MZ�NZ(@��@����&string��WZ+�XZ1@@��ZZ+�[Z1@@@����!t��bZ5�cZ6@@��eZ5�fZ6@@@��hZ+�iZ6@@@@@��kZ�lZ6@��nZ�oZ6@���Р)to_string��w\8<�x\8E@��@����!t���\8H��\8I@@���\8H��\8I@@@����&string���\8M��\8S@@���\8M��\8S@@@���\8H��\8S@@@@@���\88��\8S@���\88��\8S@���Р%equal���^UY��^U^@��@����!t���^Ua��^Ub@@���^Ua��^Ub@@@��@����!t���^Uf��^Ug@@���^Uf��^Ug@@@����$bool���^Uk��^Uo@@���^Uk��^Uo@@@���^Uf��^Uo@@@���^Ua��^Uo@@@@@���^UU��^Uo@���^UU��^Uo@���Р,all_commands���`qu��`q�@����$list���`q���`q�@�����!t���`q���`q�@@���`q���`q�@@@@���`q���`q�@@@@@���`qq��`q�@���`qq��`q�@���Р.infer_exe_name��b���b��@����&string��	b���
b��@@��b���b��@@@@@��b���b��@��b���b��@���Р+to_exe_name��d���d��@��@����!t��%d���&d��@@��(d���)d��@@@����&string��0d���1d��@@��3d���4d��@@@��6d���7d��@@@@@��9d���:d��@��<d���=d��@���Р+of_exe_name��Ef���Ff��@��@����&string��Of���Pf��@@��Rf���Sf��@@@����&option��Zf���[f��@�����!t��cf���df��@@��ff���gf��@@@@��if���jf��@@@��lf���mf��@@@@@��of���pf��@��rf���sf��@@