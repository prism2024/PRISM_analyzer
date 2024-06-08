Caml1999N028����         	   =src/pulse/PulseOperations.mli����  ��  x  W�  U�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��=src/pulse/PulseOperations.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@������3PulseBasicInterface��I � ��I � �@A��I � ��I � �@@��I � ��I � �@������4PulseDomainInterface��!J � ��"J � �@A��$J � ��%J � �@@��'J � ��(J � �@������&Import��1M#*�2M#0@�����A�    �+access_mode��=N7>�>N7I@@@��Р$Read��EOLR�FOLV@�@@��IOLP�JOLV@@�Р%Write��PPW]�QPWb@�@@��TPW[�UPWb@@�Р(NoAccess��[Qci�\Qcq@�@@��_Qcg�`Qcq@���)ocaml.doc���@@ ���@@ �A�������	� The initialized-ness of the address is not checked when it evaluates a heap address
            without actual memory access, for example, when evaluating [&x.f] we need to check
            initialized-ness of [x], not that of [x.f]. @��qRrz�rT1k@@@@��tRrz�uT1k@@��wRrz�xT1k@@@A@@��zN79�{Qcq@@��}N79�~Qcq@�����*ocaml.text��@@ ��@@ �A�������	o {2 Imported types for ease of use and so we can write variants without the corresponding
      module prefix} "@���Vmo��W��@@@@���Vmo��W��@@���Vmo��W��@���Vmo��W��@���A�    �7execution_domain_base_t���Y� ��Y�@����2abductive_domain_t���Y����Y��@@@B@@��Р/ContinueProgram���ZGM��ZG\@����2abductive_domain_t���ZG`��ZGs@@@@@���ZGK��ZGs@@�Р+ExitProgram���[tz��[t�@�������/AbductiveDomain'summary���[t���[t�@@���[t���[t�@@@@@���[tx��[t�@@�Р,AbortProgram���\����\��@�������/AbductiveDomain'summary���\����\��@@���\����\��@@@@@���\����\��@@�Р2LatentAbortProgram���]����]��@��Р&astate�� ]���]��@@�����/AbductiveDomain'summary��
]���]�@@��]���]�@@@��]���]�@@�Р,latent_issue��]��]�@@�����+LatentIssue!t��!]��"]�(@@��$]��%]�(@@@��']��(]�(@@@@��*]���+]�)@@�Р3LatentInvalidAccess��1^*0�2^*C@��Р&astate��9_GQ�:_GW@@�����/AbductiveDomain'summary��C_GY�D_Gp@@��F_GY�G_Gp@@@��I_GQ�J`qz@@�Р'address��P`q{�Q`q�@@�����-AbstractValue!t��Z`q��[`q�@@��]`q��^`q�@@@��``q{�aa��@@�Р-must_be_valid��ga���ha��@@�����%Trace!t��qa���ra��@@��ta���ua��@@@��wa���xb��@@�Р/calling_context��~b���b��@@����$list���b����b��@���������)CallEvent!t���b����b��@@���b����b��@@@������(Location!t���b����b��@@���b����b��@@@@���b����b��@@@@���b����b��@@@���b����b��@@@@���^*.��b��@@�Р4ISLLatentMemoryError���c����c�@�������/AbductiveDomain'summary���c���c�'@@���c���c�'@@@@@���c����c�'@@@A������/ExecutionDomain&base_t���Y�.��Y�D@���2abductive_domain_t���Y���Y�-@@@@���Y���Y�D@@@@���Y����c�'@@���Y����c�'@���A�    �*base_error���e)8��e)B@����&astate���e)0��e)7@@@B@@��Р6PotentialInvalidAccess���fbh� fb~@��Р&astate��fb��fb�@@��&astate��fb��fb�@@@��fb��fb�@@�Р'address��fb��fb�@@�����-AbstractValue!t��!fb��"fb�@@��$fb��%fb�@@@��'fb��(fb�@@�Р-must_be_valid��.fb��/fb�@@�����%Trace!t��8fb��9fb�@@��;fb��<fb�@@@��>fb��?fb�@@@@��Afbf�Bfb�@@�Р=PotentialInvalidAccessSummary��Hg���Ig��@��Р&astate��Ph���Qh��@@�����/AbductiveDomain'summary��Zh���[h�@@��]h���^h�@@@��`h���ah�@@�Р'address��gh��hh�@@�����-AbstractValue!t��qh� �rh�/@@��th� �uh�/@@@��wh��xh�0@@�Р-must_be_valid��~h�1�h�>@@�����%Trace!t���h�@��h�G@@���h�@��h�G@@@���h�1��h�G@@@@���g����h�H@@�Р/ReportableError���iIO��iI^@��Р&astate���iIc��iIi@@��&astate���iIk��iIr@@@���iIc��iIs@@�Р*diagnostic���iIt��iI~@@�����*Diagnostic!t���iI���iI�@@���iI���iI�@@@���iIt��iI�@@@@���iIM��iI�@@�Р(ISLError���j����j��@����&astate���j����j��@@@@@���j����j��@@@A������,AccessResult%error���e)M��e)_@���&astate���e)E��e)L@@@@���e)E��e)_@@@@���e)+��j��@@���e)+��j��@�����s���@@ ���@@ �A�������4 {2 Monadic syntax} �@��l���l��@@@@��l���l��@@��	l���
l��@��l���l��@�����������'IResult*Let_syntax��n���n��@��n��� n��@@��"n���#n��@@��%n���&n��@@��(n���)n��@���Р&let<*>��1p���2p�@��@�����,AccessResult!t��=p�	�>p�@���!a��Dp��Ep�@@@@��Gp��Hp�@@@��@��@��!a��Qp��Rp�@@@����$list��Yp�4�Zp�8@������,AccessResult!t��dp�%�ep�3@���!b��kp�"�lp�$@@@@��np�"�op�3@@@@��qp�"�rp�8@@@��tp��up�8@@@����$list��|p�O�}p�S@������,AccessResult!t���p�@��p�N@���!b���p�=��p�?@@@@���p�=��p�N@@@@���p�=��p�S@@@���p���p�S@@@���p���p�S@@@@���;��1@@ ��2@@ �A�������	� monadic "bind" but not really that turns an [AccessResult.t] into a list of [AccessResult.t]s
      (not really because the first type is not an [AccessResult.t list] but just an
      [AccessResult.t]) <@���qTV��s'@@@@���qTV��s'@@���qTV��s'@@���p����p�S@���p����p�S@���Р&let<+>���u)/��u)9@��@�����,AccessResult!t���v<F��v<T@���!a���v<C��v<E@@@@���v<C��v<T@@@��@��@��!a���wU]��wU_@@@��2abductive_domain_t���wUc��wUv@@@���wU]��wUv@@@����$list���xx���xx�@������,AccessResult!t���xx���xx�@�����7execution_domain_base_t��xx��xx�@���2abductive_domain_t��xx�xx�@@@@��xx�xx�@@@@��xx�xx�@@@@��xx�xx�@@@��wU\�xx�@@@��v<C�xx�@@@@�������@@ ���@@ �A�������	[ monadic "map" but even less really that turns an [AccessResult.t] into an analysis result �@��,y���-y�	!@@@@��/y���0y�	!@@��2y���3y�	!@@��5u)+�6xx�@��8u)+�9xx�@@��;M#3�<z	"	%@@���ܰ��@@ ���@@ �A�������	! For [open]ing in other modules. �@��LL � ��ML �"@@@@��OL � ��PL �"@@��RL � ��SL �"@@��UM##�Vz	"	%@��XM##�Yz	"	%@����������&Import��f|	'	>�g|	'	D@��i|	'	>�j|	'	D@@��l|	'	/�m|	'	D@@��o|	'	'�p|	'	D@@��r|	'	'�s|	'	D@���A�    �!t��|~	F	K�}~	F	L@@@@A������/AbductiveDomain!t���~	F	O��~	F	`@@���~	F	O��~	F	`@@@@���~	F	F��~	F	`@@���~	F	F��~	F	`@���Р1check_addr_access��� @	b	f�� @	b	w@��@����+access_mode��� A	z	|�� A	z	�@@��� A	z	|�� A	z	�@@@��@�����(Location!t��� A	z	��� A	z	�@@��� A	z	��� A	z	�@@@��@��������-AbstractValue!t��� A	z	��� A	z	�@@��� A	z	��� A	z	�@@@������,ValueHistory!t��� A	z	��� A	z	�@@��� A	z	��� A	z	�@@@@��� A	z	��� A	z	�@@@��@����!t��� A	z	��� A	z	�@@��� A	z	��� A	z	�@@@�����,AccessResult!t��� A	z	��� A	z	�@�����!t��� A	z	��� A	z	�@@��� A	z	��� A	z	�@@@@��� A	z	��� A	z	�@@@�� A	z	�� A	z	�@@@�� A	z	�� A	z	�@@@�� A	z	�� A	z	�@@@��
 A	z	|� A	z	�@@@@�������@@ ���@@ �A�������	5 Check that the [address] is not known to be invalid �@�� B	�	�� B	�
@@@@�� B	�	�� B	�
@@��! B	�	��" B	�
@@��$ @	b	b�% A	z	�@��' @	b	b�( A	z	�@������(Closures��1 D

�2 D

@�����Р8check_captured_addresses��< E
%
+�= E
%
C@��@�����(Location!t��H E
%
F�I E
%
P@@��K E
%
F�L E
%
P@@@��@�����-AbstractValue!t��W E
%
T�X E
%
c@@��Z E
%
T�[ E
%
c@@@��@����!t��d E
%
g�e E
%
h@@��g E
%
g�h E
%
h@@@�����,AccessResult!t��q E
%
n�r E
%
|@�����!t��z E
%
l�{ E
%
m@@��} E
%
l�~ E
%
m@@@@��� E
%
l�� E
%
|@@@��� E
%
g�� E
%
|@@@��� E
%
T�� E
%
|@@@��� E
%
F�� E
%
|@@@@���*�� @@ ��!@@ �A�������	= assert the validity of the addresses captured by the lambda +@��� F
}
�� F
}
�@@@@��� F
}
�� F
}
�@@��� F
}
�� F
}
�@@��� E
%
'�� E
%
|@��� E
%
'�� E
%
|@@��� D

!�� G
�
�@@@��� D

�� G
�
�@��� D

�� G
�
�@���Р$eval��� I
�
��� I
�
�@��@����+access_mode��� J
�
��� J
�
�@@��� J
�
��� J
�
�@@@��@�����(Location!t��� J
�
��� J
�
�@@��� J
�
��� J
�
�@@@��@�����#Exp!t��� J
�
��� J
�
�@@��� J
�
��� J
�
�@@@��@����!t��� J
�
��� J
�
�@@��� J
�
��� J
�
�@@@�����,AccessResult!t��� J
�(�� J
�6@��������!t�� J
� � J
�@@��	 J
� �
 J
�@@@���������-AbstractValue!t�� J
�� J
�@@�� J
�� J
�@@@������,ValueHistory!t��% J
��& J
�%@@��( J
��) J
�%@@@@��+ J
��, J
�%@@@@��. J
� �/ J
�&@@@@��1 J
�
��2 J
�6@@@��4 J
�
��5 J
�6@@@��7 J
�
��8 J
�6@@@��: J
�
��; J
�6@@@��= J
�
��> J
�6@@@@���ް��@@ ���@@ �A�������	� Use the stack and heap to evaluate the given expression down to an abstract address representing
    its value.

    Return an error state if it traverses some known invalid address or if the end destination is
    known to be invalid. �@��N K77�O O)@@@@��Q K77�R O)@@��T K77�U O)@@��W I
�
��X J
�6@��Z I
�
��[ J
�6@���Р2eval_structure_isl��c Q+/�d Q+A@��@����+access_mode��m RDI�n RDT@@��p RDI�q RDT@@@��@�����(Location!t��| SUZ�} SUd@@�� SUZ�� SUd@@@��@�����#Exp!t��� Tej�� Teo@@��� Tej�� Teo@@@��@����!t��� Upu�� Upv@@��� Upu�� Upv@@@�����,AccessResult!t��� Vw��� Vw�@��������$bool��� Vw}�� Vw�@@��� Vw}�� Vw�@@@�����$list��� Vw��� Vw�@������,AccessResult!t��� Vw��� Vw�@��������!t��� Vw��� Vw�@@��� Vw��� Vw�@@@���������-AbstractValue!t��� Vw��� Vw�@@��� Vw��� Vw�@@@������,ValueHistory!t��� Vw��� Vw�@@��� Vw��� Vw�@@@@��� Vw��� Vw�@@@@��� Vw��� Vw�@@@@��� Vw��  Vw�@@@@�� Vw�� Vw�@@@@�� Vw}� Vw�@@@@�� Vw|�	 Vw�@@@�� Upu� Vw�@@@�� Tej� Vw�@@@�� SUZ� Vw�@@@�� RDI� Vw�@@@@�������@@ ���@@ �A�������	� Similar to eval but apply to data structures and ISL abduction. Return a list of abduced states
    (ISLOk and ISLErs); The boolean indicates whether it is data structures or not. �@��% W���& X5�@@@@��( W���) X5�@@��+ W���, X5�@@��. Q++�/ Vw�@��1 Q++�2 Vw�@���Р%prune��: Z���; Z��@��@�����(Location!t��F Z���G Z��@@��I Z���J Z��@@@���)condition�����#Exp!t��W Z���X Z��@@��Z Z���[ Z��@@@��@����!t��d Z���e Z��@@��g Z���h Z��@@@�����,AccessResult!t��q Z���r Z��@�����!t��z Z���{ Z��@@��} Z���~ Z��@@@@��� Z���� Z��@@@��� Z���� Z��@@@��� Z���� Z��@@@��� Z���� Z��@@@@@��� Z���� Z��@��� Z���� Z��@���Р*eval_deref��� \���� \��@��@�����(Location!t��� \���� \��@@��� \���� \��@@@��@�����#Exp!t��� \���� \��@@��� \���� \��@@@��@����!t��� \���� \��@@��� \���� \��@@@�����,AccessResult!t��� \�'�� \�5@��������!t��� \���� \� @@��� \���� \� @@@���������-AbstractValue!t��� \��� \�@@��� \��� \�@@@������,ValueHistory!t��� \��� \�$@@��� \��� \�$@@@@��� \��� \�$@@@@�� \��� \�%@@@@�� \��� \�5@@@�� \��� \�5@@@��
 \��� \�5@@@�� \��� \�5@@@@�������@@ ���@@ �A�������	# Like [eval] but evaluates [*exp]. �@�� ]66� ]6^@@@@��! ]66�" ]6^@@��$ ]66�% ]6^@@��' \���( \�5@��* \���+ \�5@���Р.eval_deref_isl��3 _`d�4 _`r@��@�����(Location!t��? `uw�@ `u�@@��B `uw�C `u�@@@��@�����#Exp!t��N `u��O `u�@@��Q `u��R `u�@@@��@����!t��[ `u��\ `u�@@��^ `u��_ `u�@@@����$list��f `u��g `u�@������,AccessResult!t��q `u��r `u�@��������!t��} `u��~ `u�@@��� `u��� `u�@@@���������-AbstractValue!t��� `u��� `u�@@��� `u��� `u�@@@������,ValueHistory!t��� `u��� `u�@@��� `u��� `u�@@@@��� `u��� `u�@@@@��� `u��� `u�@@@@��� `u��� `u�@@@@��� `u��� `u�@@@��� `u��� `u�@@@��� `u��� `u�@@@��� `uw�� `u�@@@@@��� _``�� `u�@��� _``�� `u�@���Р+eval_access��� b���� b��@��@����+access_mode��� c���� c��@@��� c���� c��@@@��@�����(Location!t��� d���� d�@@��� d���� d�@@@��@��������-AbstractValue!t��� e	�� e@@��� e	�� e@@@������,ValueHistory!t��� e�� e)@@��� e�	  e)@@@@��	 e	�	 e)@@@��@������*BaseMemory&Access!t��	 f*/�	 f*B@@��	 f*/�	 f*B@@@��@����!t��	 gCH�	 gCI@@��	  gCH�	! gCI@@@�����,AccessResult!t��	* hJx�	+ hJ�@��������!t��	6 hJP�	7 hJQ@@��	9 hJP�	: hJQ@@@���������-AbstractValue!t��	G hJU�	H hJd@@��	J hJU�	K hJd@@@������,ValueHistory!t��	U hJg�	V hJu@@��	X hJg�	Y hJu@@@@��	[ hJU�	\ hJu@@@@��	^ hJP�	_ hJv@@@@��	a hJO�	b hJ�@@@��	d gCH�	e hJ�@@@��	g f*/�	h hJ�@@@��	j e	�	k hJ�@@@��	m d���	n hJ�@@@��	p c���	q hJ�@@@@���	��
@@ ��
@@ �A�������	� Like [eval] but starts from an address instead of an expression, checks that it is valid, and if
    so dereferences it according to the access. 
@��	� i���	� j�@@@@��	� i���	� j�@@��	� i���	� j�@@��	� b���	� hJ�@��	� b���	� hJ�@���Р(havoc_id��	� l $�	� l ,@��@�����%Ident!t��	� l /�	� l 6@@��	� l /�	� l 6@@@��@�����,ValueHistory!t��	� l :�	� l H@@��	� l :�	� l H@@@��@����!t��	� l L�	� l M@@��	� l L�	� l M@@@����!t��	� l Q�	� l R@@��	� l Q�	� l R@@@��	� l L�	� l R@@@��	� l :�	� l R@@@��	� l /�	� l R@@@@@��	� l  �	� l R@��	� l  �	� l R@���Р+havoc_field��	� nTX�	� nTc@��@�����(Location!t��	� ofk�	� ofu@@��	� ofk�	� ofu@@@��@��������-AbstractValue!t��
 pv{�
 pv�@@��
 pv{�
 pv�@@@������,ValueHistory!t��
 pv��
 pv�@@��
 pv��
 pv�@@@@��
 pv{�
 pv�@@@��@�����)Fieldname!t��
" q���
# q��@@��
% q���
& q��@@@��@�����,ValueHistory!t��
1 r���
2 r��@@��
4 r���
5 r��@@@��@����!t��
> s���
? s��@@��
A s���
B s��@@@�����,AccessResult!t��
K t���
L t��@�����!t��
T t���
U t��@@��
W t���
X t��@@@@��
Z t���
[ t��@@@��
] s���
^ t��@@@��
` r���
a t��@@@��
c q���
d t��@@@��
f pv{�
g t��@@@��
i ofk�
j t��@@@@@��
l nTT�
m t��@��
o nTT�
p t��@���Р,realloc_pvar��
x v���
y v��@��@�����$Tenv!t��
� v���
� v��@@��
� v���
� v��@@@��@�����$Pvar!t��
� v���
� v�@@��
� v���
� v�@@@��@�����#Typ!t��
� v��
� v�@@��
� v��
� v�@@@��@�����(Location!t��
� v��
� v�@@��
� v��
� v�@@@��@����!t��
� v��
� v�@@��
� v��
� v�@@@����!t��
� v�"�
� v�#@@��
� v�"�
� v�#@@@��
� v��
� v�#@@@��
� v��
� v�#@@@��
� v��
� v�#@@@��
� v���
� v�#@@@��
� v���
� v�#@@@@@��
� v���
� v�#@��
� v���
� v�#@���Р(write_id��
� x%)�
� x%1@��@�����%Ident!t��
� x%4�
� x%;@@��
� x%4�
� x%;@@@��@��������-AbstractValue!t�� x%?�	 x%N@@�� x%?� x%N@@@������,ValueHistory!t�� x%Q� x%_@@�� x%Q� x%_@@@@�� x%?� x%_@@@��@����!t��& x%c�' x%d@@��) x%c�* x%d@@@����!t��1 x%h�2 x%i@@��4 x%h�5 x%i@@@��7 x%c�8 x%i@@@��: x%?�; x%i@@@��= x%4�> x%i@@@@@��@ x%%�A x%i@��C x%%�D x%i@���Р+write_field��L zko�M zkz@��@�����(Location!t��X {}��Y {}�@@��[ {}��\ {}�@@@���#ref��������-AbstractValue!t��l |���m |��@@��o |���p |��@@@������,ValueHistory!t��z |���{ |��@@��} |���~ |��@@@@��� |���� |��@@@��@�����)Fieldname!t��� }���� }��@@��� }���� }��@@@���#obj��������-AbstractValue!t��� ~���� ~��@@��� ~���� ~��@@@������,ValueHistory!t��� ~���� ~��@@��� ~���� ~��@@@@��� ~���� ~��@@@��@����!t��� ���� ��@@��� ���� ��@@@�����,AccessResult!t��� �� �� ��@�����!t��� ����� ���@@��� ����� ���@@@@��� ����� ��@@@��� ���� ��@@@��� ~���� ��@@@��� }���� ��@@@��� |���� ��@@@��� {}��� ��@@@@�������@@ ���@@ �A�������	& write the edge [ref --.field--> obj] �@��� ��� �:@@@@��� ��� �:@@��  �� �:@@�� zkk� ��@�� zkk� ��@���Р/write_arr_index�� �<@� �<O@��@�����(Location!t�� �RW� �Ra@@�� �RW� �Ra@@@���#ref��������-AbstractValue!t��/ �bk�0 �bz@@��2 �bk�3 �bz@@@������,ValueHistory!t��= �b}�> �b�@@��@ �b}�A �b�@@@@��C �bk�D �b�@@@���%index�����-AbstractValue!t��Q ����R ���@@��T ����U ���@@@���#obj��������-AbstractValue!t��e ����f ���@@��h ����i ���@@@������,ValueHistory!t��s ����t ���@@��v ����w ���@@@@��y ����z ���@@@��@����!t��� ����� ���@@��� ����� ���@@@�����,AccessResult!t��� ����� ���@�����!t��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@��� ����� ���@@@��� ����� ���@@@��� ����� ���@@@��� �bg�� ���@@@��� �RW�� ���@@@@���O��E@@ ��F@@ �A�������	& write the edge [ref\[index\]--> obj] P@��� ����� ��@@@@��� ����� ��@@��� ����� ��@@��� �<<�� ���@��� �<<�� ���@���Р+write_deref��� ��� �*@��@�����(Location!t��� �-2�� �-<@@��� �-2�� �-<@@@���#ref��������-AbstractValue!t��� �=F�� �=U@@��� �=F�� �=U@@@������,ValueHistory!t�� �=X� �=f@@�� �=X� �=f@@@@�� �=F�	 �=f@@@���#obj��������-AbstractValue!t�� �gp� �g@@�� �gp� �g@@@������,ValueHistory!t��' �g��( �g�@@��* �g��+ �g�@@@@��- �gp�. �g�@@@��@����!t��7 ����8 ���@@��: ����; ���@@@�����,AccessResult!t��D ����E ���@�����!t��M ����N ���@@��P ����Q ���@@@@��S ����T ���@@@��V ����W ���@@@��Y �gl�Z ���@@@��\ �=B�] ���@@@��_ �-2�` ���@@@@��� ���@@ ���@@ �A�������	! write the edge [ref --*--> obj] @��p ����q ���@@@@��s ����t ���@@��v ����w ���@@��y ��z ���@��| ��} ���@���Р4write_deref_biad_isl��� ����� ���@��@�����(Location!t��� ����� �� @@��� ����� �� @@@���#ref��������-AbstractValue!t��� �
�� �@@��� �
�� �@@@������,ValueHistory!t��� ��� �*@@��� ��� �*@@@@��� �
�� �*@@@��@������&HilExp&Access!t��� �+@�� �+O@������-AbstractValue!t��� �+0�� �+?@@��� �+0�� �+?@@@@��� �+0�� �+O@@@���#obj��������-AbstractValue!t��� �PY�� �Ph@@��� �PY�� �Ph@@@������,ValueHistory!t��� �Pk�� �Py@@��� �Pk�� �Py@@@@��� �PY�� �Py@@@��@����!t�� �z� �z�@@��
 �z� �z�@@@����$list�� ���� ���@������,AccessResult!t�� ���� ���@�����!t��& ����' ���@@��) ����* ���@@@@��, ����- ���@@@@��/ ����0 ���@@@��2 �z�3 ���@@@��5 �PU�6 ���@@@��8 �+0�9 ���@@@��; ��< ���@@@��> ����? ���@@@@@��A ����B ���@��D ����E ���@���Р*invalidate��M ����N ���@��@�����(Location!t��Y ����Z ���@@��\ ����] ���@@@��@�����,Invalidation!t��h ����i ���@@��k ����l ���@@@��@��������-AbstractValue!t��z ����{ ���@@��} ����~ ���@@@������,ValueHistory!t��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@��@����!t��� ����� ���@@��� ����� ���@@@�����,AccessResult!t��� ����� ��	@�����!t��� ����� ���@@��� ����� ���@@@@��� ����� ��	@@@��� ����� ��	@@@��� ����� ��	@@@��� ����� ��	@@@��� ����� ��	@@@@���a��W@@ ��X@@ �A�������	$ record that the address is invalid b@��� �

�� �
3@@@@��� �

�� �
3@@��� �

�� �
3@@��� ����� ��	@��� ����� ��	@���Р3invalidate_biad_isl��� �59�� �5L@��@�����(Location!t��� �OQ�� �O[@@��� �OQ�� �O[@@@��@�����,Invalidation!t�� �O_� �Om@@�� �O_� �Om@@@��@��������-AbstractValue!t�� �Oq� �O�@@�� �Oq� �O�@@@������,ValueHistory!t��! �O��" �O�@@��$ �O��% �O�@@@@��' �Oq�( �O�@@@��@����!t��1 �O��2 �O�@@��4 �O��5 �O�@@@����$list��< �O��= �O�@������,AccessResult!t��G �O��H �O�@�����!t��P �O��Q �O�@@��S �O��T �O�@@@@��V �O��W �O�@@@@��Y �O��Z �O�@@@��\ �O��] �O�@@@��_ �Oq�` �O�@@@��b �O_�c �O�@@@��e �OQ�f �O�@@@@������@@ ���@@ �A�������	� record that the address is invalid. If the address has not been allocated, abduce ISL specs for
    both invalid (null, free, unint) and allocated heap. @��v ����w �O@@@@��y ����z �O@@��| ����} �O@@�� �55�� �O�@��� �55�� �O�@���Р(allocate��� �QU�� �Q]@��@�����(Procname!t��� �Q`�� �Qj@@��� �Q`�� �Qj@@@��@�����(Location!t��� �Qn�� �Qx@@��� �Qn�� �Qx@@@��@��������-AbstractValue!t��� �Q|�� �Q�@@��� �Q|�� �Q�@@@������,ValueHistory!t��� �Q��� �Q�@@��� �Q��� �Q�@@@@��� �Q|�� �Q�@@@��@����!t��� �Q��� �Q�@@��� �Q��� �Q�@@@����!t��� �Q��� �Q�@@��� �Q��� �Q�@@@��� �Q��� �Q�@@@��� �Q|�� �Q�@@@��� �Qn�� �Q�@@@��� �Q`�� �Q�@@@@@��� �QQ�� �Q�@��� �QQ�� �Q�@���Р0add_dynamic_type��� ����  ���@��@�����#Typ!t�� ���� ���@@�� ���� ���@@@��@�����-AbstractValue!t�� ���� ���@@�� ���� ���@@@��@����!t��' ����( ���@@��* ����+ ���@@@����!t��2 ����3 ���@@��5 ����6 ���@@@��8 ����9 ���@@@��; ����< ���@@@��> ����? ���@@@@@��A ����B ���@��D ����E ���@���Р6remove_allocation_attr��M ����N ���@��@�����-AbstractValue!t��Y �� �Z ��@@��\ �� �] ��@@@��@����!t��f ���g ��@@��i ���j ��@@@����!t��q ���r ��@@��t ���u ��@@@��w ���x ��@@@��z �� �{ ��@@@@@��} ����~ ��@��� ����� ��@���Р1invalidate_access��� ��� �0@��@�����(Location!t��� �38�� �3B@@��� �38�� �3B@@@��@�����,Invalidation!t��� �CH�� �CV@@��� �CH�� �CV@@@��@��������-AbstractValue!t��� �W\�� �Wk@@��� �W\�� �Wk@@@������,ValueHistory!t��� �Wn�� �W|@@��� �Wn�� �W|@@@@��� �W\�� �W|@@@��@������*BaseMemory&Access!t��� �}��� �}�@@��� �}��� �}�@@@��@����!t��� ����� ���@@��� ����� ���@@@�����,AccessResult!t��� ����� ���@�����!t��� ����� ���@@��� ����� ���@@@@�� ���� ���@@@�� ���� ���@@@�� �}�� ���@@@��
 �W\� ���@@@�� �CH� ���@@@�� �38� ���@@@@�������@@ ���@@ �A�������	B record that what the address points via the access to is invalid �@��! ����" ���@@@@��$ ����% ���@@��' ����( ���@@��* ��+ ���@��- ��. ���@���Р9invalidate_array_elements��6 �� �7 ��@��@�����(Location!t��B ��C �(@@��E ��F �(@@@��@�����,Invalidation!t��Q �,�R �:@@��T �,�U �:@@@��@��������-AbstractValue!t��c �>�d �M@@��f �>�g �M@@@������,ValueHistory!t��q �P�r �^@@��t �P�u �^@@@@��w �>�x �^@@@��@����!t��� �b�� �c@@��� �b�� �c@@@�����,AccessResult!t��� �i�� �w@�����!t��� �g�� �h@@��� �g�� �h@@@@��� �g�� �w@@@��� �b�� �w@@@��� �>�� �w@@@��� �,�� �w@@@��� ��� �w@@@@���J��@@@ ��A@@ �A�������	F record that all the array elements that address points to is invalid K@��� �xx�� �x�@@@@��� �xx�� �x�@@��� �xx�� �x�@@��� ����� �w@��� ����� �w@���Р,shallow_copy��� ����� ���@��@�����(Location!t��� ����� ���@@��� ����� ���@@@��@��������-AbstractValue!t��� ����� ���@@��� ����� ���@@@������,ValueHistory!t��� ����� ��@@��� ����� ��@@@@�� ���� ��@@@��@����!t�� �� �@@�� �� �@@@�����,AccessResult!t�� �C� �Q@��������!t��$ ��% �@@��' ��( �@@@���������-AbstractValue!t��5 � �6 �/@@��8 � �9 �/@@@������,ValueHistory!t��C �2�D �@@@��F �2�G �@@@@@��I � �J �@@@@@��L ��M �A@@@@��O ��P �Q@@@��R ��S �Q@@@��U ����V �Q@@@��X ����Y �Q@@@@�������@@ ���@@ �A�������	G returns the address of a new cell with the same edges as the original �@��i �RR�j �R�@@@@��l �RR�m �R�@@��o �RR�p �R�@@��r ����s �Q@��u ����v �Q@���Р	#get_dynamic_type_unreachable_values��~ ���� ���@��@����$list��� ����� ���@������#Var!t��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@��@����!t��� ����� ���@@��� ����� ���@@@����$list��� ����� ���@���������#Var!t��� ����� ���@@��� ����� ���@@@������#Typ!t��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@@��� ����� ���@@@��� ����� ���@@@��� ����� ���@@@@���z��p@@ ��q@@ �A�������	� Given a list of variables, computes the unreachable values if the variables were removed from
    the stack, then return the dynamic types of those values if they are available {@��� ����� �T�@@@@��� ����� �T�@@��� ����� �T�@@��� ����� ���@��� ����� ���@���Р+remove_vars��� ����  ���@��@�����$Tenv!t�� ���� ���@@�� ���� ���@@@��@����$list�� ���� ���@������#Var!t��# ����$ ���@@��& ����' ���@@@@��) ����* ���@@@��@�����(Location!t��5 ����6 ���@@��8 ����9 ���@@@��@����!t��B ����C ���@@��E ����F ���@@@�����,AccessResult!t��O ����P ���@�����!t��X ����Y ���@@��[ ����\ ���@@@@��^ ����_ ���@@@��a ����b ���@@@��d ����e ���@@@��g ����h ���@@@��j ����k ���@@@@@��m ����n ���@��p ����q ���@���Р4check_address_escape��y ����z ��@��@�����(Location!t��� ��� �!@@��� ��� �!@@@��@�����(Procdesc!t��� �%�� �/@@��� �%�� �/@@@��@�����-AbstractValue!t��� �3�� �B@@��� �3�� �B@@@��@�����,ValueHistory!t��� �F�� �T@@��� �F�� �T@@@��@����!t��� �X�� �Y@@��� �X�� �Y@@@�����,AccessResult!t��� �_�� �m@�����!t��� �]�� �^@@��� �]�� �^@@@@��� �]�� �m@@@��� �X�� �m@@@��� �F�� �m@@@��� �3�� �m@@@��� �%�� �m@@@��� ��� �m@@@@@��� ����� �m@��� ����� �m@���Р4get_captured_actuals��� �os�� �o�@��@�����(Location!t�� ���� ���@@�� ����	 ���@@@���-captured_vars����$list�� ���� ���@���������#Var!t��" ����# ���@@��% ����& ���@@@������$Pvar,capture_mode��0 ����1 ���@@��3 ����4 ���@@@@��6 ����7 ���@@@@��9 ����: ���@@@���.actual_closure��������-AbstractValue!t��J ����K ���@@��M ����N ���@@@������,ValueHistory!t��X ����Y ��@@��[ ����\ ��@@@@��^ ����_ ��@@@��@����!t��h ��i �	@@��k ��l �	@@@�����,AccessResult!t��u �
G�v �
U@��������!t��� �
�� �
@@��� �
�� �
@@@�����$list��� �
A�� �
E@���������#Var!t��� �
�� �
@@��� �
�� �
@@@���������-AbstractValue!t��� �
�� �
-@@��� �
�� �
-@@@������,ValueHistory!t��� �
0�� �
>@@��� �
0�� �
>@@@@��� �
�� �
>@@@@��� �
�� �
?@@@@��� �
�� �
E@@@@��� �
�� �
E@@@@��� �
�� �
U@@@��� ��� �
U@@@��� ����� �
U@@@��� ����� �
U@@@��� ����� �
U@@@@@��� �oo�� �
U@��� �oo�� �
U@@