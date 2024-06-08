Caml1999N028����            7src/absint/LowerHil.mli����  �  :  H  ,�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��7src/absint/LowerHil.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@�����)HilConfig��J � ��J � �@������Р5include_array_indexes��K � ��K � @����$bool��$K ��%K �@@��'K ��(K �@@@@���)ocaml.doc���@@ ���@@ �A�������	> if true, array index expressions will appear in access paths �@��9L
�:LM@@@@��<L
�=LM@@��?L
�@LM@@��BK � ��CK �@��EK � ��FK �@@��HJ � ��IMNQ@@@��KJ � ��LMNQ@��NJ � ��OMNQ@������-DefaultConfig��XOSZ�YOSg@����)HilConfig��`OSj�aOSs@��cOSj�dOSs@@@��fOSS�gOSs@��iOSS�jOSs@������$Make��sR���tR��@�����1TransferFunctions��|R���}R��@�����1TransferFunctions#HIL���R����R��@���R����R��@@�����)HilConfig���R����R�@����)HilConfig���R���R�@���R���R�@@��������#CFG���S"��S%@�������'ProcCfg!S���T(,��T(5@���T(,��T(5@@����!t���U6F��U6G@    ����U6F��U6G@@@@A�������1TransferFunctions#CFG!t���U6J��U6a@@���U6J��U6a@@@@���U6A��U6a@����*instrs_dir���Vbr��Vb|@    ����Vbr��Vb|@@@@A�������1TransferFunctions#CFG*instrs_dir���Vb��Vb�@@���Vb��Vb�@@@@���Vbm��Vb�@�����$Node!t��W���W��@    ���W���W��@@@@A��������1TransferFunctions#CFG$Node!t��W���W��@@��W���W��@@@@��W���W��@�����$Node"id��&X���'X��@    ���+X���,X��@@@@A��������1TransferFunctions#CFG$Node"id��:X���;X�@@��=X���>X�@@@@��@X���AX�@�����$Node%IdMap��JY �KY*@�����1TransferFunctions#CFG$Node%IdMap��VY-�WYM@�����$Node%IdSet��`ZN`�aZNj@�����1TransferFunctions#CFG$Node%IdSet��lZNm�mZN�@@��oT(,�pZN�@@@��rS�sZN�@��uS�vZN�@������&Domain��\����\��@�����������.AbstractDomain$Pair���\����\��@���\����\��@@�����1TransferFunctions&Domain���\����\��@���\����\��@@���\����\��@@����(Bindings���\����\��@���\����\��@@���\����\��@@���\����\��@@@���\����\��@���\����\��@���A�    �-analysis_data���^����^��@@@@A������1TransferFunctions-analysis_data���^���^�!@@���^���^�!@@@@���^����^�!@@���^����^�!@���Р*exec_instr���`#)��`#3@��@�����&Domain!t���`#6��`#>@@���`#6��`#>@@@��@����-analysis_data���`#B��`#O@@���`#B��`#O@@@��@������#CFG$Node!t��
`#S�`#]@@��`#S�`#]@@@��@�����#Sil%instr��`#a�`#j@@��`#a�`#j@@@�����&Domain!t��&`#n�'`#v@@��)`#n�*`#v@@@��,`#a�-`#v@@@��/`#S�0`#v@@@��2`#B�3`#v@@@��5`#6�6`#v@@@@@��8`#%�9`#v@��;`#%�<`#v@���Р/pp_session_name��Dbx~�Ebx�@��@������#CFG$Node!t��Rbx��Sbx�@@��Ubx��Vbx�@@@��@�����&Format)formatter��abx��bbx�@@��dbx��ebx�@@@����$unit��lbx��mbx�@@��obx��pbx�@@@��rbx��sbx�@@@��ubx��vbx�@@@@@��xbxz�ybx�@��{bxz�|bx�@@��~R��c��@@���R����c��@@���R����c��@@���]��@@ ��@@ �A�������	H Functor for turning HIL transfer functions into SIL transfer functions &@���Quu��Qu�@@@@���Quu��Qu�@@���Quu��Qu�@@���R����c��@���R����c��@�����!S���e����e��@���������+Interpreter���f����f��@�����3AbstractInterpreter!S���f����f��@���f����f��@@@���f����f��@���f����f��@���A�    �&domain���h���h�@@@@A@@���h� ��h�@@���h� ��h�@���Р,compute_post���j��j@��@������+Interpreter1TransferFunctions-analysis_data���k"&��k"Q@@���k"&��k"Q@@@���'initial����&domain�� k"]�k"c@@��k"]�k"c@@@��@�����(Procdesc!t��k"g�k"q@@��k"g�k"q@@@����&option��k"|�k"�@�����&domain��#k"u�$k"{@@��&k"u�'k"{@@@@��)k"u�*k"�@@@��,k"g�-k"�@@@��/k"U�0k"�@@@��2k"&�3k"�@@@@������@@ ���@@ �A�������	W compute and return the postcondition for the given procedure starting from [initial]. �@��Cl���Dl��@@@@��Fl���Gl��@@��Il���Jl��@@��Lj�Mk"�@��Oj�Pk"�@@��Re���Sm��@@@��Ue���Vm��@��Xe���Ym��@������	!MakeAbstractInterpreterWithConfig��b E���c E��@�����7MakeAbstractInterpreter��k F���l F��@�����3AbstractInterpreter$Make��u F���v F��@��x F���y F��@@�����)HilConfig��� G���� G��@����)HilConfig��� G���� G��@��� G���� G��@@�����1TransferFunctions��� H		�� H		@�����1TransferFunctions#HIL��� H		�� H		/@��� H		�� H		/@@������!S��� I	3	5�� I	3	6@��� I	3	5�� I	3	6@@����&domain��� J	7	E�� J	7	K@    ���� J	7	E�� J	7	K@@@@A�������1TransferFunctions&Domain!t��� J	7	N�� J	7	h@@��� J	7	N�� J	7	h@@@@��� J	7	@�� J	7	h@����+Interpreter��� K	i	y�� K	i	�@���7MakeAbstractInterpreter���$Make�1TransferFunctions�)HilConfig��� K	i	��� K	i	�@@��� I	3	5�� K	i	�@@��� H		�� K	i	�@@��� G���� K	i	�@@��� F���� K	i	�@@���˰��@@ ���@@ �A�������
  � Wrapper around Interpreter to prevent clients from having to deal with IdAccessPathMapDomain.

    CAVEAT: the translation does not attempt to preserve the semantics in the case where
    side-effects happen between an assignment to a logical variable and the assignement of that
    logical variable to a program variable. For instance the following SIL program

    {v
    n$0 = *&x.f
    _ = delete(&x)
    *&y = n$0
    v}

    becomes

    {v
    _ = delete(&x)
    *&y = *&x.f
    v}

    The latter is a use-after-delete of &x whereas the original SIL program is well behaved.

    Only use HIL if that is not something your checker needs to care about. �@��o��� D4�@@@@��o��� D4�@@��	o���
 D4�@@�� E��� K	i	�@�� E��� K	i	�@������7MakeAbstractInterpreter�� N

� N

/@�����1TransferFunctions��" N

1�# N

B@�����1TransferFunctions#HIL��, N

E�- N

Z@��/ N

E�0 N

Z@@������������������	!MakeAbstractInterpreterWithConfig��E P
{
��F P
{
�@��H P
{
��I P
{
�@@�����3AbstractInterpreter'MakeRPO��R P
{
��S P
{
�@��U P
{
��V P
{
�@@��X P
{
��Y P
{
�@@����-DefaultConfig��` P
{
��a P
{
�@��c P
{
��d P
{
�@@��f P
{
��g P
{
�@@����1TransferFunctions��n Q
�
��o Q
�
�@��q Q
�
��r Q
�
�@@��t P
{
��u Q
�
�@@��w O
b
l�x Q
�
�@@��z O
b
d�{ Q
�
�@@��} O
b
d�~ Q
�
�@@��� N

^�� R
�
�@@��� N

0�� R
�
�@@���\��@@ ��@@ �A�������	G Simpler version of the above wrapper that uses the default HIL config %@��� M	�	��� M	�
@@@@��� M	�	��� M	�
@@��� M	�	��� M	�
@@��� N

�� R
�
�@��� N

�� R
�
�@@