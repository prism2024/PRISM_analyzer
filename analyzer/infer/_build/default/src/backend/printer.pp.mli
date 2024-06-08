Caml1999N028����            7src/backend/printer.mli����  d  B  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��7src/backend/printer.mliI � ��I � �@@��I � ��I � �@@��I � ��I � �@�����*ocaml.text���@@ ���@@ �A�������	# Printers for the analysis results �@��K � ��K �@@@@��K � ��K �@@��!K � ��"K �@��$K � ��%K �@���Р3curr_html_formatter��-M"�.M5@����#ref��5MI�6ML@������&Format)formatter��@M8�AMH@@��CM8�DMH@@@@��FM8�GML@@@@���)ocaml.doc���@@ ���@@ �A�������8 Current html formatter �@��XNMM�YNMj@@@@��[NMM�\NMj@@��^NMM�_NMj@@��aM�bML@��dM�eML@���Р3node_finish_session��mPlp�nPl�@��@������(Procdesc$Node!t��{Pl��|Pl�@@��~Pl��Pl�@@@����$unit���Pl���Pl�@@���Pl���Pl�@@@���Pl���Pl�@@@@���F��#@@ ��$@@ �A�������	A Finish a session, and perform delayed print actions if required .@���Q����Q��@@@@���Q����Q��@@���Q����Q��@@���Pll��Pl�@���Pll��Pl�@���Р2node_start_session���S����S��@���'pp_name��@�����&Format)formatter���S���S�@@���S���S�@@@����$unit���S���S� @@���S���S� @@@���S���S� @@@��@������(Procdesc$Node!t���S�%��S�4@@���S�%��S�4@@@��@����#int���S�8��S�;@@���S�8��S�;@@@����$unit���S�?��S�C@@���S�?��S�C@@@���S�8� S�C@@@��S�%�S�C@@@��S���S�C@@@@�������@@ ���@@ �A�������	S Start a session, and create a new html fine for the node if it does not exist yet �@��TDD�TD�@@@@��TDD�TD�@@��TDD�TD�@@��S��� S�C@��"S���#S�C@���Р/write_proc_html��+V���,V��@��@�����(Procdesc!t��7V���8V��@@��:V���;V��@@@����$unit��BV���CV��@@��EV���FV��@@@��HV���IV��@@@@������@@ ���@@ �A�������	$ Write html file for the procedure. �@��YW���ZW��@@@@��\W���]W��@@��_W���`W��@@��bV���cV��@��eV���fV��@���Р4write_all_html_files��nY���oY�
@��@�����*SourceFile!t��zY��{Y�@@��}Y��~Y�@@@����$unit���Y���Y�!@@���Y���Y�!@@@���Y���Y�!@@@@���E��"@@ ��#@@ �A�������	 Group procedures used in the file by their corresponding source files, and create
    filename.ext.html for each such a file. -@���Z""��[x�@@@@���Z""��[x�@@���Z""��[x�@@���Y����Y�!@���Y����Y�!@@