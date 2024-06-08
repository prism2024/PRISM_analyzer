Caml1999N028����            7src/java/jTransType.mli����  *  +  u  Q�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��7src/java/jTransType.mliI � ��I � �@@��I � ��I � �@@��I � ��I � �@������,Javalib_pack��J � ��J �@A��J � ��J �@@��J � ��J �@������*Sawja_pack��!K
�"K@A��$K�%K@@��'K�(K@���Р0create_fieldname��0M�1M*@��@�����'JBasics*class_name��<M-�=M?@@��?M-�@M?@@@��@�����'JBasics/field_signature��KMC�LMZ@@��NMC�OMZ@@@�����)Fieldname!t��XM^�YMi@@��[M^�\Mi@@@��^MC�_Mi@@@��aM-�bMi@@@@���)ocaml.doc���@@ ���@@ �A�������	! translate the name of the field @��sNjj�tNj�@@@@��vNjj�wNj�@@��yNjj�zNj�@@��|M�}Mi@��M��Mi@���Р/get_method_kind���P����P��@��@�����'Javalib'jmethod���P����P��@������%JCode%jcode���P����P��@@���P����P��@@@@���P����P��@@@������(Procname$Java$kind���P����P��@@���P����P��@@@���P����P��@@@@@���P����P��@���P����P��@���Р3get_method_procname���R����R��@��@�����,JProgramDesc!t���S����S�@@���S����S�@@@��@�����$Tenv!t���T	��T	@@���T	��T	@@@��@�����'JBasics*class_name���U��U,@@���U��U,@@@��@�����'JBasics0method_signature���V-2� V-J@@��V-2�V-J@@@��@������(Procname$Java$kind��WKP�WKb@@��WKP�WKb@@@�����(Procname!t��Xch�Xcr@@�� Xch�!Xcr@@@��#WKP�$Xcr@@@��&V-2�'Xcr@@@��)U�*Xcr@@@��,T	�-Xcr@@@��/S���0Xcr@@@@���ΰ��@@ ���@@ �A�������	M returns a procedure name based on the class name and the method's signature �@��@Yss�AYs�@@@@��CYss�DYs�@@��FYss�GYs�@@��IR���JXcr@��LR���MXcr@���Р5translate_method_name��U[���V[��@��@�����,JProgramDesc!t��a[���b[��@@��d[���e[��@@@��@�����$Tenv!t��p[���q[��@@��s[���t[��@@@��@�����'Javalib'jmethod��[���[�@������%JCode%jcode���[����[�
@@���[����[�
@@@@���[����[�@@@�����(Procname!t���[���[�(@@���[���[�(@@@���[����[�(@@@���[����[�(@@@���[����[�(@@@@���E��=@@ ��>@@ �A�������	5 translate the SIL procedure name of the Java method H@���\))��\)c@@@@���\))��\)c@@���\))��\)c@@���[����[�(@���[����[�(@���Р4get_class_struct_typ���^ei��^e}@��@�����,JProgramDesc!t���^e���^e�@@���^e���^e�@@@��@�����$Tenv!t���^e���^e�@@���^e���^e�@@@��@�����'JBasics*class_name���^e���^e�@@���^e���^e�@@@�����&Struct!t��^e��^e�@@��^e��^e�@@@��	^e��
^e�@@@��^e��^e�@@@��^e��^e�@@@@�������@@ ���@@ �A�������	[ [get_class_struct_typ program tenv cn] returns the struct_typ representation of the class �@�� _���!_�@@@@��#_���$_�@@��&_���'_�@@��)^ee�*^e�@��,^ee�-^e�@���Р9get_class_type_no_pointer��5a!�6a:@��@�����,JProgramDesc!t��Aa=�BaK@@��Da=�EaK@@@��@�����$Tenv!t��PaO�QaU@@��SaO�TaU@@@��@�����'JBasics*class_name��_aY�`ak@@��baY�cak@@@�����#Typ!t��lao�mat@@��oao�pat@@@��raY�sat@@@��uaO�vat@@@��xa=�yat@@@@�����@@ ��@@ �A�������	{ [get_class_type_no_pointer program tenv cn] returns the sil type representation of the class
    without the pointer part @���buu��c��@@@@���buu��c��@@���buu��c��@@���a��at@���a��at@���Р.get_class_type���e����e�	@��@�����,JProgramDesc!t���e���e�@@���e���e�@@@��@�����$Tenv!t���e���e�$@@���e���e�$@@@��@�����'JBasics*class_name���e�(��e�:@@���e�(��e�:@@@�����#Typ!t���e�>��e�C@@���e�>��e�C@@@���e�(��e�C@@@���e���e�C@@@���e���e�C@@@@������x@@ ��y@@ �A�������	S [get_class_type program tenv cn] returns the sil type representation of the class �@���fDD��fD�@@@@���fDD��fD�@@���fDD��fD�@@���e����e�C@���e����e�C@���Р=is_autogenerated_assert_field��h���h��@��@�����)Fieldname!t��h���h��@@��h���h��@@@����$bool��h���h��@@��!h���"h��@@@��$h���%h��@@@@���ð��@@ ���@@ �A�������	Z return true if [field_name] is the autogenerated C.$assertionsDisabled field for class C �@��5i���6i�5@@@@��8i���9i�5@@��;i���<i�5@@��>h���?h��@��Ah���Bh��@���Р5sizeof_of_object_type��Jk7;�Kk7P@��@�����,JProgramDesc!t��Vk7S�Wk7a@@��Yk7S�Zk7a@@@��@�����$Tenv!t��ek7e�fk7k@@��hk7e�ik7k@@@��@�����'JBasics+object_type��tk7o�uk7�@@��wk7o�xk7�@@@��@�����'Subtype!t���k7���k7�@@���k7���k7�@@@�����#Exp!t���k7���k7�@@���k7���k7�@@@���k7���k7�@@@���k7o��k7�@@@���k7e��k7�@@@���k7S��k7�@@@@���>��6@@ ��7@@ �A�������	I create sizeof expressions from the object type and the list of subtypes A@���l����l��@@@@���l����l��@@���l����l��@@���k77��k7�@���k77��k7�@���Р*value_type���n����n��@��@�����,JProgramDesc!t���n����n�@@���n����n�@@@��@�����$Tenv!t���n���n�@@���n���n�@@@��@�����'JBasics*value_type���n���n�(@@���n���n�(@@@�����#Typ!t���n�,��n�1@@���n�,� n�1@@@��n��n�1@@@��n��n�1@@@��n���	n�1@@@@�������@@ ���@@ �A�������	$ transforms a Java type to a Typ.t. �@��o22�o2[@@@@��o22�o2[@@��o22� o2[@@��"n���#n�1@��%n���&n�1@���Р*param_type��.q]a�/q]k@��@�����,JProgramDesc!t��:rnp�;rn~@@��=rnp�>rn~@@@��@�����$Tenv!t��Irn��Jrn�@@��Lrn��Mrn�@@@��@�����'JBasics*class_name��Xrn��Yrn�@@��[rn��\rn�@@@��@�����$JBir#var��grn��hrn�@@��jrn��krn�@@@��@�����'JBasics*value_type��vrn��wrn�@@��yrn��zrn�@@@�����#Typ!t���rn���rn�@@���rn���rn�@@@���rn���rn�@@@���rn���rn�@@@���rn���rn�@@@���rn���rn�@@@���rnp��rn�@@@@���4��,@@ ��-@@ �A�������	T return the type of a formal parameter, looking up the class name in case of "this" 7@���s����s�#@@@@���s����s�#@@���s����s�#@@���q]]��rn�@���q]]��rn�@���Р+return_type���u%)��u%4@��@�����,JProgramDesc!t���u%7��u%E@@���u%7��u%E@@@��@�����$Tenv!t���u%I��u%O@@���u%I��u%O@@@��@�����'JBasics0method_signature���u%S��u%k@@���u%S��u%k@@@�����#Typ!t���u%o��u%t@@���u%o��u%t@@@���u%S��u%t@@@���u%I��u%t@@@���u%7��u%t@@@@�������@@ ���@@ �A�������	Q Returns the return type of the method based on the return type specified in ms. �@��vuu�vu�@@@@��vuu�vu�@@��vuu�vu�@@��u%%�u%t@��u%%�u%t@���Р)expr_type��$x���%x��@��@�����(JContext!t��0x���1x��@@��3x���4x��@@@��@�����$JBir$expr��?x���@x��@@��Bx���Cx��@@@�����#Typ!t��Lx���Mx��@@��Ox���Px��@@@��Rx���Sx��@@@��Ux���Vx��@@@@�������@@ ���@@ �A�������	& translates the type of an expression �@��fy���gy�	)@@@@��iy���jy�	)@@��ly���my�	)@@��ox���px��@��rx���sx��@���Р)cast_type��{{	+	/�|{	+	8@��@�����$JBir$conv���{	+	;��{	+	D@@���{	+	;��{	+	D@@@�����#Typ!t���{	+	H��{	+	M@@���{	+	H��{	+	M@@@���{	+	;��{	+	M@@@@���9��1@@ ��2@@ �A�������	0 translates a conversion type from Java to Sil. <@���|	N	N��|	N	�@@@@���|	N	N��|	N	�@@���|	N	N��|	N	�@@���{	+	+��{	+	M@���{	+	+��{	+	M@���Р1package_to_string���~	�	���~	�	�@��@����$list���~	�	���~	�	�@�����&string���~	�	���~	�	�@@���~	�	���~	�	�@@@@���~	�	���~	�	�@@@����&option���~	�	���~	�	�@�����&string���~	�	���~	�	�@@���~	�	���~	�	�@@@@���~	�	���~	�	�@@@���~	�	���~	�	�@@@@@���~	�	���~	�	�@���~	�	���~	�	�@���Р1create_array_type�� @	�	�� @	�	�@��@�����#Typ!t�� @	�	�� @	�	�@@�� @	�	�� @	�	�@@@��@����#int�� @	�	�� @	�	�@@�� @	�	�� @	�	�@@@�����#Typ!t��( @	�	��) @	�	�@@��+ @	�	��, @	�	�@@@��. @	�	��/ @	�	�@@@��1 @	�	��2 @	�	�@@@@���а��@@ ���@@ �A�������	V [create_array_type typ dim] creates an array type with dimension dim and content typ �@��B A	�	��C A	�
D@@@@��E A	�	��F A	�
D@@��H A	�	��I A	�
D@@��K @	�	��L @	�	�@��N @	�	��O @	�	�@���Р5object_type_to_string��W C
F
J�X C
F
_@��@�����'JBasics+object_type��c C
F
b�d C
F
u@@��f C
F
b�g C
F
u@@@����&string��n C
F
y�o C
F
@@��q C
F
y�r C
F
@@@��t C
F
b�u C
F
@@@@�����@@ ��@@ �A�������	8 returns a string representation of an object Java type @��� D
�
��� D
�
�@@@@��� D
�
��� D
�
�@@��� D
�
��� D
�
�@@��� C
F
F�� C
F
@��� C
F
F�� C
F
@@