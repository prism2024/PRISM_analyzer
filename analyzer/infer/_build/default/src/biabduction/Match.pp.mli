Caml1999N028����            9src/biabduction/Match.mli����  -    �  d�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��9src/biabduction/Match.mliI � ��I � �@@��I � ��I � �@@��I � ��I � �@�����*ocaml.text���@@ ���@@ �A�������
  � Implementation of "Smart" Pattern Matching for higher order singly-linked list predicate.

    Used for detecting on a given program if some data scructures are matching some predefined
    higher-order list predicates. When it is the case, these predicates can be used as possible
    candidates for abstracting the data-structures. See
    {{:http://dx.doi.org/10.1007/978-3-540-73368-3_22} CAV 2007} for the therory involved. �@��K � ��PJ�@@@@��K � ��PJ�@@��!K � ��"PJ�@��$K � ��%PJ�@���Р5hpara_match_with_impl��-T���.T��@��@�����$Tenv!t��9T���:T��@@��<T���=T��@@@��@����$bool��FT���GT��@@��IT���JT��@@@��@�����*Predicates%hpara��UT���VT�
@@��XT���YT�
@@@��@�����*Predicates%hpara��dT��eT�@@��gT��hT�@@@����$bool��oT�"�pT�&@@��rT�"�sT�&@@@��uT��vT�&@@@��xT���yT�&@@@��{T���|T�&@@@��~T���T�&@@@@@���T����T�&@���T����T�&@���Р9hpara_dll_match_with_impl���V(,��V(E@��@�����$Tenv!t���WHJ��WHP@@���WHJ��WHP@@@��@����$bool���WHT��WHX@@���WHT��WHX@@@��@�����*Predicates)hpara_dll���WH\��WHp@@���WH\��WHp@@@��@�����*Predicates)hpara_dll���WHt��WH�@@���WHt��WH�@@@����$bool���WH���WH�@@���WH���WH�@@@���WHt��WH�@@@���WH\��WH�@@@���WHT��WH�@@@���WHJ��WH�@@@@@���V((��WH�@���V((��WH�@���A�    �)hpred_pat���[HM��[HV@@@��Р%hpred���[HZ��[H_@@�����*Predicates%hpred�� [Ha�[Hq@@��[Ha�[Hq@@@��[HZ�[Hr@@�Р$flag��[Hs�[Hw@@����$bool��[Hy�[H}@@��[Hy�[H}@@@��[Hs�[H}@@@A@���)ocaml.doc���@@ ���@@ �A�������	� Type for a hpred pattern. [flag=false] means that the implication between hpreds is not
    considered, and [flag = true] means that it is considered during pattern matching. �@��-Y���.Z�G@@@@��0Y���1Z�G@@��3Y���4Z�G@@��6[HH�7[H~@@��9[HH�:[H~@���A�    �-sidecondition��C]���D]��@@@@A���@�����$Prop!t��P]���Q]��@������$Prop&normal��[]���\]��@@��^]���_]��@@@@��a]���b]��@@@��@�����*Predicates%subst��m]���n]��@@��p]���q]��@@@����$bool��x]���y]��@@��{]���|]��@@@��~]���]��@@@���]����]��@@@@���]����]��@@���]����]��@���Р4prop_match_with_impl���_����_��@��@�����$Tenv!t���`����`��@@���`����`��@@@��@�����$Prop!t���a����a�@������$Prop&normal���a����a��@@���a����a��@@@@���a����a�@@@��@����-sidecondition���b	��b@@���b	��b@@@��@����$list���c$��c(@������%Ident!t���c��c#@@���c��c#@@@@���c��c(@@@��@����)hpred_pat���d).��d)7@@���d).��d)7@@@��@����$list���e8G��e8K@�����)hpred_pat��e8=�e8F@@��e8=�e8F@@@@��
e8=�e8K@@@����&option��fLy�fL@���������*Predicates%subst�� fLR�!fLb@@��#fLR�$fLb@@@������$Prop!t��.fLq�/fLw@������$Prop&normal��9fLe�:fLp@@��<fLe�=fLp@@@@��?fLe�@fLw@@@@��BfLR�CfLw@@@@��EfLQ�FfL@@@��He8=�IfL@@@��Kd).�LfL@@@��Nc�OfL@@@��Qb	�RfL@@@��Ta���UfL@@@��W`���XfL@@@@���<���@@ ���@@ �A�������	� [prop_match_with_impl p condition vars hpat hpats] returns [(subst, p_leftover)] such that

    + [dom(subst) = vars]
    + [p |- (hpat.hpred * hpats.hpred)\[subst\] * p_leftover].

    Using the flag [field], we can control the strength of |-. �@��hg���il:{@@@@��kg���ll:{@@��ng���ol:{@@��q_���rfL@��t_���ufL@���Р0find_partial_iso��}n}��~n}�@��@�����$Tenv!t���o����o��@@���o����o��@@@��@��@�����#Exp!t���p����p��@@���p����p��@@@��@�����#Exp!t���p����p��@@���p����p��@@@����$bool���p����p��@@���p����p��@@@���p����p��@@@���p����p��@@@��@����$list���q����q��@���������#Exp!t���q����q��@@���q����q��@@@������#Exp!t���q����q��@@���q����q��@@@@���q����q��@@@@���q����q��@@@��@����$list���r����r��@���������#Exp!t��r���r��@@��r���r��@@@������#Exp!t��r���r��@@��r���r��@@@@��r���r��@@@@��r���r��@@@��@����$list��%s��&s�@������*Predicates%hpred��0s���1s�@@��3s���4s�@@@@��6s���7s�@@@����&option��>uqv�?uq|@��������$list��Jt#�Kt'@���������#Exp!t��Xt�Yt@@��[t�\t@@@������#Exp!t��ft�gt!@@��it�jt!@@@@��lt�mt!@@@@��ot�pt'@@@�����$list��xt;�yt?@������*Predicates%hpred���t*��t:@@���t*��t:@@@@���t*��t?@@@�����$list���tS��tW@������*Predicates%hpred���tB��tR@@���tB��tR@@@@���tB��tW@@@�����$list���tk��to@������*Predicates%hpred���tZ��tj@@���tZ��tj@@@@���tZ��to@@@@���t��to@@@@���t��uq|@@@���s����uq|@@@���r����uq|@@@���q����uq|@@@���p����uq|@@@���o����uq|@@@@������i@@ ��j@@ �A�������
  � [find_partial_iso] finds disjoint isomorphic sub-sigmas inside a given sigma. The first argument
    is an equality checker. The function returns a partial iso and three sigmas. The first sigma is
    the first copy of the two isomorphic sigmas, so it uses expressions in the domain of the
    returned isomorphism. The second is the second copy of the two isomorphic sigmas, and it uses
    expressions in the range of the isomorphism. The third is the unused part of the input sigma. t@���v}}��z		i@@@@���v}}��z		i@@���v}}��z		i@@���n}}��uq|@���n}}��uq|@���Р)hpara_iso���|	k	o��|	k	x@��@�����$Tenv!t��|	k	{�|	k	�@@��|	k	{�|	k	�@@@��@�����*Predicates%hpara��|	k	��|	k	�@@��|	k	��|	k	�@@@��@�����*Predicates%hpara��"|	k	��#|	k	�@@��%|	k	��&|	k	�@@@����$bool��-|	k	��.|	k	�@@��0|	k	��1|	k	�@@@��3|	k	��4|	k	�@@@��6|	k	��7|	k	�@@@��9|	k	{�:|	k	�@@@@������@@ ���@@ �A�������	? [hpara_iso] soundly checks whether two hparas are isomorphic. �@��J}	�	��K}	�	�@@@@��M}	�	��N}	�	�@@��P}	�	��Q}	�	�@@��S|	k	k�T|	k	�@��V|	k	k�W|	k	�@���Р-hpara_dll_iso��_	�	��`	�
	@��@�����$Tenv!t��k	�
�l	�
@@��n	�
�o	�
@@@��@�����*Predicates)hpara_dll��z	�
�{	�
*@@��}	�
�~	�
*@@@��@�����*Predicates)hpara_dll���	�
.��	�
B@@���	�
.��	�
B@@@����$bool���	�
F��	�
J@@���	�
F��	�
J@@@���	�
.��	�
J@@@���	�
��	�
J@@@���	�
��	�
J@@@@������7@@ ��8@@ �A�������	G [hpara_dll_iso] soundly checks whether two hpara_dlls are isomorphic. B@��� @
K
K�� @
K
�@@@@��� @
K
K�� @
K
�@@��� @
K
K�� @
K
�@@���	�	���	�
J@���	�	���	�
J@���Р,hpara_create��� B
�
��� B
�
�@��@�����$Tenv!t��� C
�
��� C
�
�@@��� C
�
��� C
�
�@@@��@����$list��� D
�
��� D
�
�@���������#Exp!t��� D
�
��� D
�
�@@��� D
�
��� D
�
�@@@������#Exp!t��� D
�
��� D
�
�@@��� D
�
��� D
�
�@@@@�� D
�
�� D
�
�@@@@�� D
�
�� D
�
�@@@��@����$list�� E
�
�� E
�
�@������*Predicates%hpred�� E
�
�� E
�
�@@�� E
�
�� E
�
�@@@@�� E
�
��  E
�
�@@@��@�����#Exp!t��+ F
�
��, F
�
�@@��. F
�
��/ F
�
�@@@��@�����#Exp!t��: G
�
��; G
�@@��= G
�
��> G
�@@@��������*Predicates%hpara��J H�K H@@��M H�N H@@@�����$list��V H!�W H%@������#Exp!t��a H�b H @@��d H�e H @@@@��g H�h H%@@@@��j H�k H%@@@��m G
�
��n H%@@@��p F
�
��q H%@@@��s E
�
��t H%@@@��v D
�
��w H%@@@��y C
�
��z H%@@@@���^��@@ ��@@ �A�������
   [hpara_create] takes a correspondence, and a sigma, a root and a next for the first part of this
    correspondence. Then, it creates a hpara and discovers a list of shared expressions that are
    passed as arguments to hpara. Both of them are returned as a result. @��� I&&�� K�7@@@@��� I&&�� K�7@@��� I&&�� K�7@@��� B
�
��� H%@��� B
�
��� H%@���Р0hpara_dll_create��� M9=�� M9M@��@�����$Tenv!t��� NPU�� NP[@@��� NPU�� NP[@@@��@����$list��� O\q�� O\u@���������#Exp!t��� O\b�� O\g@@��� O\b�� O\g@@@������#Exp!t��� O\j�� O\o@@��� O\j�� O\o@@@@��� O\b�� O\o@@@@��� O\a�� O\u@@@��@����$list��� Pv��� Pv�@������*Predicates%hpred��� Pv{�� Pv�@@��� Pv{�� Pv�@@@@��� Pv{�� Pv�@@@��@�����#Exp!t�� Q��� Q��@@�� Q��� Q��@@@��@�����#Exp!t�� R��� R��@@�� R��� R��@@@��@�����#Exp!t��" S���# S��@@��% S���& S��@@@��������*Predicates)hpara_dll��2 T���3 T��@@��5 T���6 T��@@@�����$list��> T���? T��@������#Exp!t��I T���J T��@@��L T���M T��@@@@��O T���P T��@@@@��R T���S T��@@@��U S���V T��@@@��X R���Y T��@@@��[ Q���\ T��@@@��^ Pv{�_ T��@@@��a O\a�b T��@@@��d NPU�e T��@@@@���I���@@ ���@@ �A�������
   [hpara_dll_create] takes a correspondence, and a sigma, a root, a blink and a flink for the
    first part of this correspondence. Then, it creates a hpara_dll and discovers a list of shared
    expressions that are passed as arguments to hpara. Both of them are returned as a result. @��u U���v W��@@@@��x U���y W��@@��{ U���| W��@@��~ M99� T��@��� M99�� T��@@