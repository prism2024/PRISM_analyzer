Caml1999N028����            6src/IR/SourceFiles.mli����  �  y    w�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��6src/IR/SourceFiles.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@���Р#add��J � ��J � �@��@�����*SourceFile!t��J � ��J � �@@��J � �� J � �@@@��@�����#Cfg!t��+J � ��,J � �@@��.J � ��/J � �@@@��@�����$Tenv(per_file��:J � ��;J � �@@��=J � ��>J � �@@@��@����&option��GJ ��HJ �@�������#Typ-IntegerWidths!t��TJ � ��UJ �@@��WJ � ��XJ �@@@@��ZJ � ��[J �@@@����$unit��bJ ��cJ �@@��eJ ��fJ �@@@��hJ � ��iJ �@@@��kJ � ��lJ �@@@��nJ � ��oJ �@@@��qJ � ��rJ �@@@@���)ocaml.doc��	@@ ��
@@ �A�������	L Add or replace the row corresponding to the source file into the database. @���K  ��K q@@@@���K  ��K q@@���K  ��K q@@���J � ���J �@���J � ���J �@���Р'get_all���Msw��Ms~@���&filter�����)Filtering3source_files_filter���Ms���Ms�@@���Ms���Ms�@@@��@����$unit���Ms���Ms�@@���Ms���Ms�@@@����$list���Ms���Ms�@������*SourceFile!t���Ms���Ms�@@���Ms���Ms�@@@@���Ms���Ms�@@@���Ms���Ms�@@@���Ms���Ms�@@@@���d��l@@ ��m@@ �A�������	* get all the source files in the database w@���N����N��@@@@���N����N��@@���N����N��@@���Mss��Ms�@���Mss��Ms�@���Р4proc_names_of_source���P����P�@��@�����*SourceFile!t��P��P�@@��
P��P�@@@����$list��P�*�P�.@������(Procname!t��P��P�)@@�� P��!P�)@@@@��#P��$P�.@@@��&P��'P�.@@@@�������@@ ���@@ �A�������	J list of all the proc names (declared and defined) found in a source file �@��7Q//�8Q/~@@@@��:Q//�;Q/~@@��=Q//�>Q/~@@��@P���AP�.@��CP���DP�.@���Р1get_procs_in_file��LS���MS��@��@�����(Procname!t��XS���YS��@@��[S���\S��@@@����$list��cS���dS��@������(Procname!t��nS���oS��@@��qS���rS��@@@@��tS���uS��@@@��wS���xS��@@@@�����@@ ��@@ �A�������	V return the list of procedures in the file where the given procedure name was defined @���T����T�@@@@���T����T�@@���T����T�@@���S����S��@���S����S��@���Р(is_empty���V��V@��@����$unit���V"��V&@@���V"��V&@@@����$bool���V*��V.@@���V*��V.@@@���V"��V.@@@@���G��O@@ ��P@@ �A�������	8 whether there exists at least one captured source file Z@���W//��W/l@@@@���W//��W/l@@���W//��W/l@@���V��V.@���V��V.@���Р3is_freshly_captured���Ynr��Yn�@��@�����*SourceFile!t���Yn���Yn�@@���Yn���Yn�@@@����$bool���Yn���Yn�@@���Yn���Yn�@@@���Yn���Yn�@@@@�������@@ ���@@ �A�������	@ whether the source file was captured in the last capture phase �@��Z���Z��@@@@��Z���Z��@@��Z���Z��@@��Ynn�Yn�@��Ynn�Yn�@���Р.mark_all_stale��!\���"\��@��@����$unit��+\���,\��@@��.\���/\��@@@����$unit��6\��7\�@@��9\��:\�@@@��<\���=\�@@@@���˰��@@ ���@@ �A�������	R mark all source files as stale; do be called at the start of a new capture phase �@��M]�N]]@@@@��P]�Q]]@@��S]�T]]@@��V\���W\�@��Y\���Z\�@���Р&pp_all��b__c�c__i@���&filter�����)Filtering3source_files_filter��p`lx�q`l�@@��s`lx�t`l�@@@���0type_environment����$bool��a����a��@@���a����a��@@@���/procedure_names����$bool���b����b��@@���b����b��@@@���0freshly_captured����$bool���c����c��@@���c����c��@@@��@�����&Format)formatter���d����d��@@���d����d��@@@��@����$unit���e���e�@@���e���e�@@@����$unit���f��f@@���f��f@@@���e���f@@@���d����f@@@���c����f@@@���b����f@@@���a����f@@@���`lq��f@@@@@���___��f@���___��f@@