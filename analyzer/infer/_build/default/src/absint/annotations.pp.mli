Caml1999N028����            :src/absint/annotations.mli����  D  Y  .�  ,������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��:src/absint/annotations.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@�����*ocaml.text���@@ ���@@ �A�������. Annotations. �@��J � ��J � �@@@@��J � ��J � �@@��!J � ��"J � �@��$J � ��%J � �@���Р*any_thread��-L � ��.L � �@����&string��5L � ��6L � �@@��8L � ��9L � �@@@@@��;L � ��<L � �@��>L � ��?L � �@���Р,auto_cleanup��GN � ��HN �@����&string��ON �
�PN �@@��RN �
�SN �@@@@@��UN � ��VN �@��XN � ��YN �@���Р)expensive��aP�bP@����&string��iP"�jP(@@��lP"�mP(@@@@@��oP�pP(@��rP�sP(@���Р+inject_prop��{R*.�|R*9@����&string���R*<��R*B@@���R*<��R*B@@@@@���R**��R*B@���R**��R*B@���Р)immutable���TDH��TDQ@����&string���TDT��TDZ@@���TDT��TDZ@@@@@���TDD��TDZ@���TDD��TDZ@���Р(lockless���V\`��V\h@����&string���V\k��V\q@@���V\k��V\q@@@@@���V\\��V\q@���V\\��V\q@���Р-no_allocation���Xsw��Xs�@����&string���Xs���Xs�@@���Xs���Xs�@@@@@���Xss��Xs�@���Xss��Xs�@���Р(nullable���Z����Z��@����&string���Z����Z��@@���Z����Z��@@@@@���Z����Z��@���Z����Z��@���Р(nullsafe���\����\��@����&string��\���\��@@��\���	\��@@@@@��\���\��@��\���\��@���Р'nonnull��^���^��@����&string��^��� ^��@@��"^���#^��@@@@@��%^���&^��@��(^���)^��@���Р4performance_critical��1`���2`��@����&string��9`���:`��@@��<`���=`��@@@@@��?`���@`��@��B`���C`��@���Р$prop��Kb���Lb��@����&string��Sb��Tb�@@��Vb��Wb�@@@@@��Yb���Zb�@��\b���]b�@���Р1for_non_ui_thread��ed	�fd	@����&string��md	!�nd	'@@��pd	!�qd	'@@@@���'warning��wd	+�xd	2@�������#-32@���d	3��d	8@@@@���d	3��d	8@@���d	(��d	9@@���d		��d	9@���d		��d	9@���Р-for_ui_thread���f;?��f;L@����&string���f;O��f;U@@���f;O��f;U@@@@���'warning���f;Y��f;`@�������#-32E@���f;a��f;f@@@@���f;a��f;f@@���f;V��f;g@@���f;;��f;g@���f;;��f;g@���Р*guarded_by���him��hiw@����&string���hiz��hi�@@���hiz��hi�@@@@@���hii��hi�@���hii��hi�@���Р-suppress_lint���j����j��@����&string���j����j��@@���j����j��@@@@@���j����j��@���j����j��@���Р+thread_safe���l����l��@����&string��l���l��@@��l���	l��@@@@@��l���l��@��l���l��@���Р*mainthread��n���n��@����&string��n��� n��@@��"n���#n��@@@@@��%n���&n��@��(n���)n��@���Р)ui_thread��1p���2p��@����&string��9p���:p��@@��<p���=p��@@@@@��?p���@p��@��Bp���Cp��@���Р-worker_thread��Kr���Lr��@����&string��Sr���Tr�@@��Vr���Wr�@@@@@��Yr���Zr�@��\r���]r�@���Р1visibleForTesting��et	�ft@����&string��mt�nt#@@��pt�qt#@@@@@��st�tt#@��vt�wt#@���Р/annot_ends_with��v%)��v%8@��@�����%Annot!t���v%;��v%B@@���v%;��v%B@@@��@����&string���v%F��v%L@@���v%F��v%L@@@����$bool���v%P��v%T@@���v%P��v%T@@@���v%F��v%T@@@���v%;��v%T@@@@���)ocaml.doc��D@@ ��E@@ �A�������	} [annot_ends_with annot ann_name] returns true if the class name of [annot], without the package,
    is equal to [ann_name] O@���wUU��x��@@@@���wUU��x��@@���wUU��x��@@���v%%��v%T@���v%%��v%T@���Р,ia_ends_with���z����z��@��@������%Annot$Item!t���z����z��@@���z����z��@@@��@����&string���z����z�@@���z����z�@@@����$bool���z���z�
@@���z���z�
@@@���z��� z�
@@@��z���z�
@@@@���V���@@ ���@@ �A�������	H Check if there is an annotation in [ia] which ends with the given name �@��{�{X@@@@��{�{X@@��{�{X@@��z���z�
@��z��� z�
@���Р6ia_has_annotation_with��(}Z^�)}Zt@��@������%Annot$Item!t��6}Zw�7}Z�@@��9}Zw�:}Z�@@@��@��@�����%Annot!t��G}Z��H}Z�@@��J}Z��K}Z�@@@����$bool��R}Z��S}Z�@@��U}Z��V}Z�@@@��X}Z��Y}Z�@@@����$bool��`}Z��a}Z�@@��c}Z��d}Z�@@@��f}Z��g}Z�@@@��i}Zw�j}Z�@@@@@��l}ZZ�m}Z�@��o}ZZ�p}Z�@���Р3ia_is_false_on_null��x���y��@��@������%Annot$Item!t���������@@���������@@@����$bool���������@@���������@@@���������@@@@@���������@���������@���Р1ia_is_initializer��� A���� A��@��@������%Annot$Item!t��� A���� A��@@��� A���� A��@@@����$bool��� A���� A��@@��� A���� A��@@@��� A���� A��@@@@@��� A���� A��@��� A���� A��@���Р-ia_is_cleanup��� C �� C @��@������%Annot$Item!t��� C �� C  @@��� C �� C  @@@����$bool��� C $�� C (@@��� C $�� C (@@@��� C �� C (@@@@@��� C  �� C (@��� C  �� C (@���Р=ia_is_field_injector_readonly�� E*.� E*K@��@������%Annot$Item!t�� E*N� E*Z@@�� E*N� E*Z@@@����$bool�� E*^� E*b@@�� E*^� E*b@@@��! E*N�" E*b@@@@���u���@@ ���@@ �A�������	w Annotations for readonly injectors. The injector framework initializes the field but does not
    write null into it. �@��2 Fcc�3 G��@@@@��5 Fcc�6 G��@@��8 Fcc�9 G��@@��; E**�< E*b@��> E**�? E*b@���Р>ia_is_field_injector_readwrite��G I���H I�@��@������%Annot$Item!t��U I��V I�@@��X I��Y I�@@@����$bool��` I��a I�@@��c I��d I�@@@��f I��g I�@@@@�������@@ ���@@ �A�������	t Annotations for read-write injectors. The injector framework initializes the field and can write
    null into it. @��w J�x K��@@@@��z J�{ K��@@��} J�~ K��@@��� I���� I�@��� I���� I�@���Р-ia_is_nonnull��� M���� M��@��@������%Annot$Item!t��� M���� M��@@��� M���� M��@@@����$bool��� M���� M��@@��� M���� M��@@@��� M���� M��@@@@@��� M���� M��@��� M���� M��@���Р.ia_is_nullable��� O���� O��@��@������%Annot$Item!t��� O���� O��@@��� O���� O��@@@����$bool��� O���� O��@@��� O���� O��@@@��� O���� O��@@@@@��� O���� O��@��� O���� O��@���Р5ia_is_nullsafe_strict��� Q���� Q�@��@������%Annot$Item!t��� Q��� Q�@@��� Q��� Q�@@@����$bool�� Q�� Q�@@�� Q�� Q�@@@�� Q�� Q�@@@@@��
 Q��� Q�@�� Q��� Q�@���Р0ia_find_nullsafe�� S!� S1@��@������%Annot$Item!t��$ S4�% S@@@��' S4�( S@@@@����&option��/ SL�0 SR@������%Annot!t��: SD�; SK@@��= SD�> SK@@@@��@ SD�A SR@@@��C S4�D SR@@@@@��F S�G SR@��I S�J SR@���Р2ia_is_true_on_null��R UTX�S UTj@��@������%Annot$Item!t��` UTm�a UTy@@��c UTm�d UTy@@@����$bool��k UT}�l UT�@@��n UT}�o UT�@@@��q UTm�r UT�@@@@@��t UTT�u UT�@��w UTT�x UT�@���Р/ia_is_expensive��� W���� W��@��@������%Annot$Item!t��� W���� W��@@��� W���� W��@@@����$bool��� W���� W��@@��� W���� W��@@@��� W���� W��@@@@@��� W���� W��@��� W���� W��@���Р0ia_is_functional��� Y���� Y��@��@������%Annot$Item!t��� Y���� Y��@@��� Y���� Y��@@@����$bool��� Y���� Y��@@��� Y���� Y��@@@��� Y���� Y��@@@@@��� Y���� Y��@��� Y���� Y��@���Р9ia_is_propagates_nullable��� [���� [��@��@������%Annot$Item!t��� [���� [�@@��� [���� [�@@@����$bool��� [��� [�@@��� [��� [�@@@��� [���� [�@@@@@��� [���� [�@�� [��� [�@���Р8ia_is_ignore_allocations��
 ]� ].@��@������%Annot$Item!t�� ]1� ]=@@�� ]1� ]=@@@����$bool��# ]A�$ ]E@@��& ]A�' ]E@@@��) ]1�* ]E@@@@@��, ]�- ]E@��/ ]�0 ]E@���Р,ia_is_inject��8 _GK�9 _GW@��@������%Annot$Item!t��F _GZ�G _Gf@@��I _GZ�J _Gf@@@����$bool��Q _Gj�R _Gn@@��T _Gj�U _Gn@@@��W _GZ�X _Gn@@@@@��Z _GG�[ _Gn@��] _GG�^ _Gn@���Р0ia_is_json_field��f apt�g ap�@��@������%Annot$Item!t��t ap��u ap�@@��w ap��x ap�@@@����$bool�� ap��� ap�@@��� ap��� ap�@@@��� ap��� ap�@@@@@��� app�� ap�@��� app�� ap�@���Р3ia_is_suppress_lint��� c���� c��@��@������%Annot$Item!t��� c���� c��@@��� c���� c��@@@����$bool��� c���� c��@@��� c���� c��@@@��� c���� c��@@@@@��� c���� c��@��� c���� c��@���Р5ia_is_not_thread_safe��� e���� e��@��@������%Annot$Item!t��� e���� e��@@��� e���� e��@@@����$bool��� e���� e��@@��� e���� e��@@@��� e���� e��@@@@@��� e���� e��@��� e���� e��@���Р1ia_is_nonblocking��� g�	�� g�	@��@������%Annot$Item!t��� g�	�� g�	#@@�� g�	� g�	#@@@����$bool��	 g�	'�
 g�	+@@�� g�	'� g�	+@@@�� g�	� g�	+@@@@@�� g��� g�	+@�� g��� g�	+@���Р7ia_is_returns_ownership�� i	-	1� i	-	H@��@������%Annot$Item!t��, i	-	K�- i	-	W@@��/ i	-	K�0 i	-	W@@@����$bool��7 i	-	[�8 i	-	_@@��: i	-	[�; i	-	_@@@��= i	-	K�> i	-	_@@@@@��@ i	-	-�A i	-	_@��C i	-	-�D i	-	_@���Р=ia_is_synchronized_collection��L k	a	e�M k	a	�@��@������%Annot$Item!t��Z k	a	��[ k	a	�@@��] k	a	��^ k	a	�@@@����$bool��e k	a	��f k	a	�@@��h k	a	��i k	a	�@@@��k k	a	��l k	a	�@@@@@��n k	a	a�o k	a	�@��q k	a	a�r k	a	�@���Р1ia_is_thread_safe��z m	�	��{ m	�	�@��@������%Annot$Item!t��� m	�	��� m	�	�@@��� m	�	��� m	�	�@@@����$bool��� m	�	��� m	�	�@@��� m	�	��� m	�	�@@@��� m	�	��� m	�	�@@@@@��� m	�	��� m	�	�@��� m	�	��� m	�	�@���Р5ia_is_thread_confined��� o	�	��� o	�	�@��@������%Annot$Item!t��� o	�	��� o	�	�@@��� o	�	��� o	�	�@@@����$bool��� o	�	��� o	�	�@@��� o	�	��� o	�	�@@@��� o	�	��� o	�	�@@@@@��� o	�	��� o	�	�@��� o	�	��� o	�	�@���Р4ia_is_thrift_service��� q	�	��� q	�
@��@������%Annot$Item!t��� q	�
�� q	�
"@@��� q	�
�� q	�
"@@@����$bool��� q	�
&�� q	�
*@@��� q	�
&�� q	�
*@@@��� q	�
�� q	�
*@@@@@��� q	�	��� q	�
*@��� q	�	��� q	�
*@���Р.ia_is_volatile�� s
,
0� s
,
>@��@������%Annot$Item!t�� s
,
A� s
,
M@@�� s
,
A� s
,
M@@@����$bool�� s
,
Q� s
,
U@@��  s
,
Q�! s
,
U@@@��# s
,
A�$ s
,
U@@@@@��& s
,
,�' s
,
U@��) s
,
,�* s
,
U@���Р3ia_is_worker_thread��2 u
W
[�3 u
W
n@��@������%Annot$Item!t��@ u
W
q�A u
W
}@@��C u
W
q�D u
W
}@@@����$bool��K u
W
��L u
W
�@@��N u
W
��O u
W
�@@@��Q u
W
q�R u
W
�@@@@@��T u
W
W�U u
W
�@��W u
W
W�X u
W
�@���Р9ia_is_uithread_equivalent��` w
�
��a w
�
�@��@������%Annot$Item!t��n w
�
��o w
�
�@@��q w
�
��r w
�
�@@@����$bool��y w
�
��z w
�
�@@��| w
�
��} w
�
�@@@�� w
�
��� w
�
�@@@@@��� w
�
��� w
�
�@��� w
�
��� w
�
�@���Р6pdesc_has_return_annot��� y
�
��� y
�
�@��@�����(Procdesc!t��� y
�
��� y
�
�@@��� y
�
��� y
�
�@@@��@��@������%Annot$Item!t��� y
�
��� y
�
�@@��� y
�
��� y
�
�@@@����$bool��� y
�
��� y
�
�@@��� y
�
��� y
�
�@@@��� y
�
��� y
�
�@@@����$bool��� y
��� y
�@@��� y
��� y
�@@@��� y
�
��� y
�@@@��� y
�
��� y
�@@@@���#��	f@@ ��	g@@ �A�������	b return true if the given predicate evaluates to true on the annotation of [pdesc]'s return value 	q@��� z�� zn@@@@��� z�� zn@@��� z�� zn@@��� y
�
��� y
�@��� y
�
��� y
�@���Р6pname_has_return_annot��� |pt�� |p�@��@�����(Procname!t��	 |p��	 |p�@@��	 |p��	 |p�@@@��@��@������%Annot$Item!t��	 |p��	 |p�@@��	 |p��	 |p�@@@����$bool��	 |p��	  |p�@@��	" |p��	# |p�@@@��	% |p��	& |p�@@@����$bool��	- |p��	. |p�@@��	0 |p��	1 |p�@@@��	3 |p��	4 |p�@@@��	6 |p��	7 |p�@@@@������	�@@ ��	�@@ �A�������	b return true if the given predicate evaluates to true on the annotation of [pname]'s return value 	�@��	G }���	H }�!@@@@��	J }���	K }�!@@��	M }���	N }�!@@��	P |pp�	Q |p�@��	S |pp�	T |p�@���Р<pdesc_return_annot_ends_with��	\ #'�	] #C@��@�����(Procdesc!t��	h #F�	i #P@@��	k #F�	l #P@@@��@����&string��	u #T�	v #Z@@��	x #T�	y #Z@@@����$bool��	� #^�	� #b@@��	� #^�	� #b@@@��	� #T�	� #b@@@��	� #F�	� #b@@@@���ݰ�
 @@ ��
!@@ �A�������	^ return true if [pdesc]'s return value is annotated with a value ending with the given string 
+@��	� �cc�	� �c�@@@@��	� �cc�	� �c�@@��	� �cc�	� �c�@@��	� ##�	� #b@��	� ##�	� #b@���Р6ma_has_annotation_with��	� ����	� ���@��@������%Annot&Method!t��	� ����	� ���@@��	� ����	� ���@@@��@��@�����%Annot!t��	� ����	� ���@@��	� ����	� ���@@@����$bool��	� ���	� ��@@��	� ���	� ��@@@��	� ����	� ��@@@����$bool��	� ���	� ��@@��	� ���	� ��@@@��	� ����	� ��@@@��	� ����	� ��@@@@@��	� ����	� ��@��	� ����	� ��@���Р/field_has_annot��	� ��
  �%@��@�����)Fieldname!t��
 �(�
 �3@@��
 �(�
 �3@@@��@�����&Struct!t��
 �7�
 �?@@��
 �7�
 �?@@@��@��@������%Annot$Item!t��
- �D�
. �P@@��
0 �D�
1 �P@@@����$bool��
8 �T�
9 �X@@��
; �T�
< �X@@@��
> �D�
? �X@@@����$bool��
F �]�
G �a@@��
I �]�
J �a@@@��
L �C�
M �a@@@��
O �7�
P �a@@@��
R �(�
S �a@@@@@��
U ��
V �a@��
X ��
Y �a@���Р4struct_typ_has_annot��
a �cg�
b �c{@��@�����&Struct!t��
m �c~�
n �c�@@��
p �c~�
q �c�@@@��@��@������%Annot$Item!t��
� �c��
� �c�@@��
� �c��
� �c�@@@����$bool��
� �c��
� �c�@@��
� �c��
� �c�@@@��
� �c��
� �c�@@@����$bool��
� �c��
� �c�@@��
� �c��
� �c�@@@��
� �c��
� �c�@@@��
� �c~�
� �c�@@@@������9@@ ��:@@ �A�������	Y return true if the given predicate evaluates to true on some annotation of [struct_typ] D@��
� ����
� ��@@@@��
� ����
� ��@@��
� ����
� ��@@��
� �cc�
� �c�@��
� �cc�
� �c�@@