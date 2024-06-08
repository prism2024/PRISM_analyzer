Caml1999N028����   "      
   	 src/concurrency/RacerDModels.mli����  'b  _  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��	 src/concurrency/RacerDModels.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@���Р1is_container_read��J � ��J � �@��@�����$Tenv!t��J � ��J � �@@��J � �� J � �@@@��@�����(Procname!t��+J � ��,J � �@@��.J � ��/J � �@@@����$bool��6J � ��7J � �@@��9J � ��:J � �@@@��<J � ��=J � �@@@��?J � ��@J � �@@@@@��BJ � ��CJ � �@��EJ � ��FJ � �@���Р2is_container_write��NL ��OL �@��@�����$Tenv!t��ZL ��[L �@@��]L ��^L �@@@��@�����(Procname!t��iL �"�jL �,@@��lL �"�mL �,@@@����$bool��tL �0�uL �4@@��wL �0�xL �4@@@��zL �"�{L �4@@@��}L ��~L �4@@@@���)ocaml.doc��@@ ��@@ �A�������	] return Some (access) if this procedure accesses the contents of a container (e.g., Map.get)  @���M55��M5�@@@@���M55��M5�@@���M55��M5�@@���L � ���L �4@���L � ���L �4@���Р0has_return_annot���O����O��@��@��@������%Annot$Item!t���O����O��@@���O����O��@@@����$bool���O����O��@@���O����O��@@@���O����O��@@@��@�����(Procname!t���O����O��@@���O����O��@@@����$bool���O����O��@@���O����O��@@@���O����O��@@@���O����O��@@@@@���O����O��@���O����O��@���Р-is_functional���Q����Q��@��@�����(Procname!t�� Q���Q��@@��Q���Q��@@@����$bool��Q� �Q�@@��Q� �Q�@@@��Q���Q�@@@@@��Q���Q�@��Q���Q�@���Р2acquires_ownership�� S
�!S@��@�����(Procname!t��,S�-S)@@��/S�0S)@@@��@�����$Tenv!t��;S-�<S3@@��>S-�?S3@@@����$bool��FS7�GS;@@��IS7�JS;@@@��LS-�MS;@@@��OS�PS;@@@@@��RS�SS;@��US�VS;@���Р&is_box��^U=A�_U=G@��@�����(Procname!t��jU=J�kU=T@@��mU=J�nU=T@@@����$bool��uU=X�vU=\@@��xU=X�yU=\@@@��{U=J�|U=\@@@@������@@ ��@@ �A�������	P return true if the given procname boxes a primitive type into a reference type @���V]]��V]�@@@@���V]]��V]�@@���V]]��V]�@@���U==��U=\@���U==��U=\@���Р9is_thread_confined_method���X����X��@��@�����$Tenv!t���X����X��@@���X����X��@@@��@�����(Procname!t���X����X��@@���X����X��@@@����$bool���X����X��@@���X����X��@@@���X����X��@@@���X����X��@@@@���S��g@@ ��h@@ �A�������
  � Methods in [@ThreadConfined] classes and methods annotated with [@ThreadConfined] are assumed to
    all run on the same thread. For the moment we won't warn on accesses resulting from use of such
    methods at all. In future we should account for races between these methods and methods from
    completely different classes that don't necessarily run on the same thread as the confined
    object. r@���Y����]z�@@@@���Y����]z�@@���Y����]z�@@���X����X��@���X����X��@���Р3should_analyze_proc���_����_��@��@�����$Tenv!t��_���_��@@��_���_��@@@��@�����(Procname!t��_���_��@@��_���_��@@@����$bool��_���_��@@��_��� _��@@@��"_���#_��@@@��%_���&_��@@@@�������@@ ���@@ �A�������
  O return true if we should compute a summary for the procedure. if this returns false, we won't
    analyze the procedure or report any warnings on it. note: in the future, we will want to analyze
    the procedures in all of these cases in order to find more bugs. this is just a temporary
    measure to avoid obvious false positives �@��6`���7c�@@@@��9`���:c�@@��<`���=c�@@��?_���@_��@��B_���C_��@���Р	-get_current_class_and_threadsafe_superclasses��Ke�LeH@��@�����$Tenv!t��WfKM�XfKS@@��ZfKM�[fKS@@@��@�����(Procname!t��ffKW�gfKa@@��ifKW�jfKa@@@����&option��qfK��rfK�@���������#Typ$name��fKf��fKn@@���fKf��fKn@@@�����$list���fKz��fK~@������#Typ$name���fKq��fKy@@���fKq��fKy@@@@���fKq��fK~@@@@���fKf��fK~@@@@���fKe��fK�@@@���fKW��fK�@@@���fKM��fK�@@@@@���e��fK�@���e��fK�@���Р5is_thread_safe_method���h����h��@��@�����(Procname!t���h����h��@@���h����h��@@@��@�����$Tenv!t���h����h��@@���h����h��@@@����$bool���h����h��@@���h����h��@@@���h����h��@@@���h����h��@@@@���i��}@@ ��~@@ �A�������	� returns true if method or overriden method in superclass is [@ThreadSafe],
    [@ThreadSafe(enableChecks = true)], or is defined as an alias of [@ThreadSafe] in a .inferconfig
    file. �@���i����ku�@@@@���i����ku�@@���i����ku�@@�� h���h��@��h���h��@���Р5is_marked_thread_safe��m���m��@��@�����(Procname!t��m���m��@@��m���m��@@@��@�����$Tenv!t��'m���(m��@@��*m���+m��@@@����$bool��2m���3m��@@��5m���6m��@@@��8m���9m��@@@��;m���<m��@@@@@��>m���?m��@��Am���Bm��@���Р.is_safe_access��Jo���Ko��@��@������&HilExp&Access!t��Xo���Yo��@���!a��_o���`o��@@@@��bo���co��@@@��@������&HilExp0AccessExpression!t��po���qo�@@��so���to�@@@��@�����$Tenv!t��o���o�@@���o���o�@@@����$bool���o���o�@@���o���o�@@@���o���o�@@@���o����o�@@@���o����o�@@@@�����-@@ ��.@@ �A�������	T check if an access to a field is thread-confined, or whether the field is volatile 8@���p��pm@@@@���p��pm@@���p��pm@@���o����o�@���o����o�@���Р:should_flag_interface_call���ros��ro�@��@�����$Tenv!t���ro���ro�@@���ro���ro�@@@��@����$list���ro���ro�@������&HilExp!t���ro���ro�@@���ro���ro�@@@@���ro���ro�@@@��@�����)CallFlags!t���ro���ro�@@���ro���ro�@@@��@�����(Procname!t��ro��ro�@@��ro��ro�@@@����$bool��ro��ro�@@��ro��ro�@@@��ro��ro�@@@��ro��ro�@@@��ro��ro�@@@��ro��ro�@@@@�������@@ ���@@ �A�������	E should an interface call be flagged as potentially non-thread safe? �@��,s���-s�	@@@@��/s���0s�	@@��2s���3s�	@@��5roo�6ro�@��8roo�9ro�@���Р9is_synchronized_container��Au		�Bu		6@��@�����(Procname!t��Mu		9�Nu		C@@��Pu		9�Qu		C@@@��@������&HilExp0AccessExpression!t��^u		G�_u		`@@��au		G�bu		`@@@��@�����$Tenv!t��mu		d�nu		j@@��pu		d�qu		j@@@����$bool��xu		n�yu		r@@��{u		n�|u		r@@@��~u		d�u		r@@@���u		G��u		r@@@���u		9��u		r@@@@�����@@ ��@@ �A�������	L is a call on an access expression to a method of a synchronized container? &@���v	s	s��v	s	�@@@@���v	s	s��v	s	�@@���v	s	s��v	s	�@@���u		��u		r@���u		��u		r@���Р.is_initializer���x	�	���x	�	�@��@�����$Tenv!t���x	�	���x	�	�@@���x	�	���x	�	�@@@��@�����(Procname!t���x	�	���x	�	�@@���x	�	���x	�	�@@@����$bool���x	�	���x	�	�@@���x	�	���x	�	�@@@���x	�	���x	�	�@@@���x	�	���x	�	�@@@@���\��p@@ ��q@@ �A�������	E should the given procedure be treated as a constructor/initializer? {@���y	�	���y	�
B@@@@���y	�	���y	�
B@@���y	�	���y	�
B@@���x	�	���x	�	�@���x	�	���x	�	�@���Р	%is_synchronized_container_constructor���{
D
H� {
D
m@��@�����$Tenv!t��{
D
p�{
D
v@@��{
D
p�{
D
v@@@��@�����(Procname!t��{
D
z�{
D
�@@��{
D
z�{
D
�@@@��@����$list��'{
D
��({
D
�@������&HilExp!t��2{
D
��3{
D
�@@��5{
D
��6{
D
�@@@@��8{
D
��9{
D
�@@@����$bool��@{
D
��A{
D
�@@��C{
D
��D{
D
�@@@��F{
D
��G{
D
�@@@��I{
D
z�J{
D
�@@@��L{
D
p�M{
D
�@@@@@��O{
D
D�P{
D
�@��R{
D
D�S{
D
�@���Р	&is_converter_to_synchronized_container��[}
�
��\}
�
�@��@�����$Tenv!t��g}
�
��h}
�
�@@��j}
�
��k}
�
�@@@��@�����(Procname!t��v}
�
��w}
�
�@@��y}
�
��z}
�
�@@@��@����$list���}
�
���}
�
�@������&HilExp!t���}
�
���}
�
�@@���}
�
���}
�
�@@@@���}
�
���}
�
�@@@����$bool���}
�
���}
�
�@@���}
�
���}
�
�@@@���}
�
���}
�
�@@@���}
�
���}
�
�@@@���}
�
���}
�
�@@@@���+��?@@ ��@@@ �A�������	U is the given [procname] a method that wraps a container into a thread-safe wrapper? J@���~
�
���~
�T@@@@���~
�
���~
�T@@���~
�
���~
�T@@���}
�
���}
�
�@���}
�
���}
�
�@@