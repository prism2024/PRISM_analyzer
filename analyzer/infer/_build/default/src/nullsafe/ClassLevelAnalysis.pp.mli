Caml1999N028����   %      
   	#src/nullsafe/ClassLevelAnalysis.mli����  �  <    ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��	#src/nullsafe/ClassLevelAnalysis.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@�����*ocaml.text���@@ ���@@ �A�������	a This stage is called for each Java class after all corresponding proc summaries are calculated. �@��J � ��J �/@@@@��J � ��J �/@@��!J � ��"J �/@��$J � ��%J �/@���Р-analyze_class��-L15�.L1B@��@�����$Tenv!t��9MEG�:MEM@@��<MEG�=MEM@@@��@�����*SourceFile!t��HMEQ�IME]@@��KMEQ�LME]@@@��@������3AggregatedSummaries)ClassInfo!t��YMEa�ZME�@@��\MEa�]ME�@@@��@�����(IssueLog!t��hME��iME�@@��kME��lME�@@@�����(IssueLog!t��uME��vME�@@��xME��yME�@@@��{ME��|ME�@@@��~MEa�ME�@@@���MEQ��ME�@@@���MEG��ME�@@@@���)ocaml.doc��@@ ��@@ �A�������
   Given aggregated summary for a class, analyze it, and return updated issue log, if necessary.
    This function will be called for each non-trivial{^ 1} anonymous class in the file, including
    nested classes. Order of calls is not specified.

    {^ 1}The class is non-trivial if it has at least one procedure, or contains at least one nested
    non-trivial class.

    (Note that [IssueLog.t] is a mutable type so it can be actually mutated by this function:
    returning [IssueLog.t] is done for convenient chaining.) '@���N����Vq�@@@@���N����Vq�@@���N����Vq�@@���L11��ME�@���L11��ME�@@