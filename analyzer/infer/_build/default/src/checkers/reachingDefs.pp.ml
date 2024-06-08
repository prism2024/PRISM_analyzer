Caml1999M028����         	   <src/checkers/reachingDefs.ml����  2u  	C  $�  #͠����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@����������$IStd��<src/checkers/reachingDefs.mlG � ��G � �@��G � ��G � �@@@��G � ��G � �@@��
G � ��G � �@������!F��H � ��H � �@����&Format��H � ��H � �@��H � �� H � �@@@��"H � ��#H � �@��%H � ��&H � �@������'NodeCFG��/I � ��0I � �@�����'ProcCfg&Normal��9I � ��:I � �@��<I � ��=I � �@@@��?I � ��@I � �@��BI � ��CI � �@������$Defs��LO���MO��@�������.AbstractDomain)FiniteSet��XO���YO�@��[O���\O�@@�����(Procdesc$Node��eO��fO�@��hO��iO�@@��kO���lO�@@���)ocaml.doc��@@ ��@@ �A�������	� The node in which the reaching definition x := e is defined.

    A definition x :=e, declared at node N, reaches the current node if there is a path from node N
    to the current node such that x is not modified along the path *@��}K � ��~N��@@@@���K � ���N��@@���K � ���N��@@���O����O�@���O����O�@������/ReachingDefsMap���T����T��@���������.AbstractDomain#Map���T����T��@���T����T��@@����#Var���T����T��@���T����T��@@���T����T��@@����$Defs���T����T��@���T����T��@@���T����T��@@���U��Y@@ ��Z@@ �A�������	$ Map var -> its reaching definition d@���Smm��Sm�@@@@���Smm��Sm�@@���Smm��Sm�@@���T����T��@���T����T��@������=TransferFunctionsReachingDefs���W
��W
.@�����#CFG���W
0��W
3@�����'ProcCfg!S���W
6��W
?@���W
6��W
?@@��������#CFG��	XJS�
XJV@����#CFG��XJY�XJ\@��XJY�XJ\@@@��XJL�XJ\@��XJL�XJ\@������&Domain��$Y]f�%Y]l@����/ReachingDefsMap��,Y]o�-Y]~@��/Y]o�0Y]~@@@��2Y]_�3Y]~@��5Y]_�6Y]~@���A�    �-analysis_data��?[���@[��@@@@A�����$unit��H[���I[��@@��K[���L[��@@@@��N[���O[��@@��Q[���R[��@���@�����*exec_instr��]^���^^��@��`^���a^��@@@��@@���&astate��i^���j^�@��l^���m^�@@@��@@����"()��v^��w^�@@��y^��z^�@@@��@@�����$node���^�	��^�@���^�	��^�@@@������#CFG$Node!t���^���^�@@���^���^�@@@���^���^�@@@��@@���%instr���^���^�!@���^���^�!@@@��@�����$node���_$,��_$0@���_$,��_$0@@@��������#CFG$Node/underlying_node���_$3��_$K@���_$3��_$K@@@��@����$node���_$L��_$P@���_$L��_$P@@@@���_$3��_$P@@@@���_$(��_$P@@��@�����1strong_update_def���`T\��`Tm@���`T\��`Tm@@@��@@���&astate���`Tn��`Tt@���`Tn��`Tt@@@��@@���#var���`Tu��`Tx@���`Tu��`Tx@@@�������&Domain#add��	`T{�
`T�@��`T{�`T�@@@��@����#var��`T��`T�@��`T��`T�@@@��@�������$Defs)singleton��'`T��(`T�@��*`T��+`T�@@@��@����$node��4`T��5`T�@��7`T��8`T�@@@@��:`T��;`T�@���>`T��?`T�@@@��@����&astate��H`T��I`T�@��K`T��L`T�@@@@��N`T{�O`T�@@@��Q`Tu�R`T�A@@��T`Tn�U`T�A@@@��W`TX�X`T�@@��@�����/weak_update_def��ba���ca��@��ea���fa��@@@��@@���&astate��na���oa��@��qa���ra��@@@��@@���#var��za���{a��@��}a���~a��@@@�������&Domain&update���b����b��@���b����b��@@@��@����#var���b����b��@���b����b��@@@��@��������$Some���c����c��@����$defs���c����c�@���c����c�@@@���c����c�@@@@����$Some���c���c�
@��������$Defs#add���c���c�@���c���c�@@@��@����$node���c���c�@���c���c�@@@��@����$defs���c���c�@���c���c�@@@@���c���c�@����c���c�@@@���c���c�@@@������$None���c�"��c�&@@���c�"��c�&@@@@����$Some��c�*�c�.@��������$Defs)singleton��c�0�c�>@��c�0�c�>@@@��@����$node�� c�?�!c�C@��#c�?�$c�C@@@@��&c�/�'c�D@���*c�0�+c�C@@@��-c�*�.c�D@@@@��0c���1c�E@���4c���5c�D@@@��@����&astate��>dFN�?dFT@��AdFN�BdFT@@@@��Db���EdFT@@@��Ga���HdFTA@@��Ja���KdFTA@@@��Ma���NdFT@@������%instr��Wf\f�Xf\k@��Zf\f�[f\k@@@�������#Sil$Load��fgqw�ggq@�������"id��qgq��rgq�@���&lhs_id��xgq��ygq�@��{gq��|gq�@@@@@��~gq��gq�@@@���gqw��gq�@@@��������%Ident'is_none���gq���gq�@���gq���gq�@@@��@����&lhs_id���gq���gq�@���gq���gq�@@@@���gq���gq�@@@����&astate���i����i��@���i����i��@@@���������#Sil$Load���j���j�@�������"id���j���j�@������j���j�@���j���j�@@@@@���j���j�@@@���j���j�@@@�����#Sil$Call���j���j�@����������"id���j� ��j�"@���j� ��j�"@@@��@���j�$��j�%@@@@���j���j�&@����j� ��j�%@@@��@�� j�(�j�)@@@��@��j�+�j�,@@@��@��
j�.�j�/@@@��@��j�1�j�2@@@@��j��j�3@���j��j�2@@@��j��j�3@@@��j��j�3@@@@������1strong_update_def��&k7?�'k7P@��)k7?�*k7P@@@��@����&astate��3k7Q�4k7W@��6k7Q�7k7W@@@��@�������#Var%of_id��Dk7Y�Ek7b@��Gk7Y�Hk7b@@@��@����"id��Qk7c�Rk7e@��Tk7c�Uk7e@@@@��Wk7X�Xk7f@���[k7Y�\k7e@@@@��^k7?�_k7f@@@�������#Sil%Store��jm���km��@�������"e1��um���vm��@����$Lvar��}m���~m��@����$pvar���m����m��@���m����m��@@@���m����m��@@@@@���m����m��@@@���m����m��@@@@������1strong_update_def���n����n��@���n����n��@@@��@����&astate���n����n��@���n����n��@@@��@�������#Var'of_pvar���n����n��@���n����n��@@@��@����$pvar���n����n��@���n����n��@@@@���n����n��@����n����n��@@@@���n����n��@@@�������#Sil%Store���p��p'@�������"e1���p)��p+@���'exp_lhs���p-��p4@���p-��p4@@@@@���p(��p5@@@���p��p5@@@@��@�����$vars��q9E�q9I@��q9E�	q9I@@@�������#Var3get_all_vars_in_exp��q9L�q9c@��q9L�q9c@@@��@����'exp_lhs��!q9d�"q9k@��$q9d�%q9k@@@@��'q9L�(q9k@@@@��*q9A�+q9k@@�������(Sequence$fold��6row�7ro�@��9row�:ro�@@@���$init����&astate��Ero��Fro�@��Hro��Iro�@@@���!f����/weak_update_def��Tro��Uro�@��Wro��Xro�@@@��@����$vars��aro��bro�@��dro��ero�@@@@��grow�hro�@@@��jq9A�kro�@@@���@��ps���qs��@@@@����&astate��xt���yt��@��{t���|t��@@@@��~f\`�t��@@@���a����t��@@@���`TX��t��@@@���_$(��t��@@@���^���t��A@@���^���t��A@@���^���t��A@@���^����t��A@@@���^����t��@@���^����t��@���@�����/pp_session_name���w����w��@���w����w��@@@��@@���$node���w����w��@���w����w��@@@��@@���#fmt���w����w��@���w����w��@@@�������!F'fprintf���x����x��@���x����x��@@@��@����#fmt���x����x��@���x����x��@@@��@���9reaching defs analysis %ax@���x����x�@@@��@������#CFG$Node%pp_id���x���x�#@���x���x�#@@@��@��������#CFG$Node"id��x�%�x�0@��	x�%�
x�0@@@��@����$node��x�1�x�5@��x�1�x�5@@@@��x�$�x�6@���x�%�x�5@@@@�� x���!x�6@@@��#w���$x�6A@@��&w���'x�6A@@@��)w���*x�6@@��,w���-x�6@@��/W
C�0y7:@@��2W
/�3y7:@@@��5W

�6y7:@��8W

�9y7:@���@�����?init_reaching_defs_with_formals��D|���E|��@��G|���H|��@@@��@@���%pdesc��P|���Q|��@��S|���T|��@@@��@�����/start_node_defs��^}���_}��@��a}���b}��@@@�������$Defs)singleton��m}���n}��@��p}���q}��@@@��@�������(Procdesc.get_start_node��~}���}��@���}����}��@@@��@����%pdesc���}����}��@���}����}��@@@@���}����}��@����}����}��@@@@���}����}��@@@@���}����}��@@������"|>���		��		@���		��		@@@��@�������(Procdesc0get_pvar_formals���~����~�	@���~����~�	@@@��@����%pdesc���~�	��~�	@���~�	��~�	@@@@���~����~�	@@@��@�������$List)fold_left���		��		-@���		��		-@@@���$init�����/ReachingDefsMap%empty���		4��		I@���		4��		I@@@���!f��@@���#acc���		R��		U@���		R��		U@@@��@@������$pvar��		W�		[@��
		W�		[@@@��@��		]�		^@@@@��		V�		_@���		W�		^@@@�������/ReachingDefsMap#add��" @	c	l�# @	c	@��% @	c	l�& @	c	@@@��@�������#Var'of_pvar��3 @	c	��4 @	c	�@��6 @	c	��7 @	c	�@@@��@����$pvar��@ @	c	��A @	c	�@��C @	c	��D @	c	�@@@@��F @	c	��G @	c	�@���J @	c	��K @	c	�@@@��@����/start_node_defs��T @	c	��U @	c	�@��W @	c	��X @	c	�@@@��@����#acc��a @	c	��b @	c	�@��d @	c	��e @	c	�@@@@��g @	c	l�h @	c	�@@@��j		V�k @	c	�A@@��m		M�n @	c	�@���q		N�r @	c	�@@@@��t		�u @	c	�@@@@��w~���x @	c	�@@@��z}���{ @	c	�@@@��}|���~ @	c	�A@@@���|���� @	c	�@@���|���� @	c	�@������(Analyzer��� C	�	��� C	�	�@�������3AbstractInterpreter'MakeRPO��� C	�	��� C	�	�@��� C	�	��� C	�	�@@������=TransferFunctionsReachingDefs��� C	�	��� C	�	�@��� C	�	��� C	�	�@@����'NodeCFG��� C	�	��� C	�
 @��� C	�	��� C	�
 @@��� C	�	��� C	�
@@��� C	�	��� C	�
@@@��� C	�	��� C	�
@��� C	�	��� C	�
@���A�    �-invariant_map��� E

	�� E

@@@@A������(Analyzer-invariant_map��� E

�� E

/@@��� E

�� E

/@@@@��� E

�� E

/@@��� E

�� E

/@���@�����5compute_invariant_map��� G
1
5�� G
1
J@��� G
1
5�� G
1
J@@@��@@���)proc_desc��� G
1
K�� G
1
T@��� G
1
K�� G
1
T@@@��@�����(node_cfg�� H
W
]� H
W
e@�� H
W
]� H
W
e@@@�������'NodeCFG*from_pdesc�� H
W
h� H
W
z@�� H
W
h� H
W
z@@@��@����)proc_desc��  H
W
{�! H
W
�@��# H
W
{�$ H
W
�@@@@��& H
W
h�' H
W
�@@@@��) H
W
Y�* H
W
�@@�������(Analyzer(exec_cfg��5 I
�
��6 I
�
�@��8 I
�
��9 I
�
�@@@��@����(node_cfg��B I
�
��C I
�
�@��E I
�
��F I
�
�@@@��@����ٰ�N I
�
��O I
�
�@@��Q I
�
��R I
�
�@@@���'initial������?init_reaching_defs_with_formals��_ I
�
��` I
�
�@��b I
�
��c I
�
�@@@��@����)proc_desc��l I
�
��m I
�
�@��o I
�
��p I
�
�@@@@��r I
�
��s I
�
�@���v I
�
��w I
�
�@@@@��y I
�
��z I
�
�@@@��| H
W
Y�} I
�
�@@@�� G
1
K�� I
�
�A@@@��� G
1
1�� I
�
�@@��� G
1
1�� I
�
�@���@�����,extract_post��� L
�
��� L
�
�@��� L
�
��� L
�
�@@@�����(Analyzer,extract_post��� L
�
��� L
�@��� L
�
��� L
�@@@@��� L
�
��� L
�@@��� L
�
��� L
�@@