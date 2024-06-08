Caml1999N028����            7src/pulse/PulseCItv.mli����  �  �  K  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��7src/pulse/PulseCItv.mliG � ��G � �@@��G � ��G � �@@��G � ��G � �@������!F��H � ��H � �@����&Format��H � ��H � �@��H � ��H � �@@@��H � �� H � �@��"H � ��#H � �@�����*ocaml.text���@@ ���@@ �A�������	! Concrete interval domain (CItv) �@��6J � ��7J � @@@@��9J � ��:J � @@��<J � ��=J � @��?J � ��@J � @���A�    �!t��IL�JL@@@@A@���(deriving��PL�QL@�����������'compare��_L�`L@��bL�cL@@@�����%equal��kL�lL#@��nL�oL#@@@@��qL�rL#@@@@��tL�uL#@@��wL	�xL$@@��zL�{L$@@��}L�~L$@�����������-ocaml.warning��&_none_A@ ��A@ �A�������#-32)@��A@ ��A@ �A@@@��A@ ��A@ �A@��A@ ��A@ �A���L��L$A���Р'compare���L��L@��@����k���L��L@@���L��L@@@��@����w���L��L@@���L��L@@���+merlin.hide��=A@ ��>A@ �A�@��^@@ ��_@@ �A@����#int���L��LA@���L��LA@@���L��LA@@���L��LA@@@@���L��L$@���L��L$@���Р%equal���L��L@��@��������L��L@@���L��L@@@��@�������L�L@@��L�L@@���C��A@ ���A@ �A�@���@@ ���@@ �A@����$bool��L�LA@��L�LA@@��L�LA@@�� L�!LA@@@@��#L�$L$@��&L�'L$@@��)L�*L$A@��,L�-L$A���)ocaml.doc���A@ ���A@ �A�������'@inline�@���A@ ���A@ �A@@@���A@ ���A@ �A@���A@ ���A@ �A�������A@ ���A@ �A�@���@@ ���@@ �A@��QL�RL$A���Р(equal_to��ZN&*�[N&2@��@�����&IntLit!t��fN&5�gN&=@@��iN&5�jN&=@@@����!t��qN&A�rN&B@@��tN&A�uN&B@@@��wN&5�xN&B@@@@@��zN&&�{N&B@��}N&&�~N&B@���Р0is_equal_to_zero���PDH��PDX@��@����!t���PD[��PD\@@���PD[��PD\@@@����$bool���PD`��PDd@@���PD`��PDd@@@���PD[��PDd@@@@@���PDD��PDd@���PDD��PDd@���Р4is_not_equal_to_zero���Rfj��Rf~@��@����!t���Rf���Rf�@@���Rf���Rf�@@@����$bool���Rf���Rf�@@���Rf���Rf�@@@���Rf���Rf�@@@@���)ocaml.doc��c@@ ��d@@ �A�������	" whether this is literally [≠0] n@���S����S��@@@@���S����S��@@���S����S��@@���Rff��Rf�@���Rff��Rf�@���Р"pp���U����U��@��@�����!F)formatter���U����U��@@��U���U��@@@��@����!t��U���U��@@��U���U��@@@����$unit��U���U��@@��U���U��@@@��U���U��@@@��U��� U��@@@@@��"U���#U��@��%U���&U��@���A�    �0abduction_result��/W���0W��@@@��Р-Unsatisfiable��7X���8X� @�@@��;X���<X� @���p���@@ ���@@ �A�������	2 the assertion is never true given the parameters �@��LX��MX�9@@@@��OX��PX�9@@��RX��SX�9@@�Р+Satisfiable��YY:>�ZY:I@������&option��cY:O�dY:U@�����!t��lY:M�mY:N@@��oY:M�pY:N@@@@��rY:M�sY:U@@@�����&option��{Y:Z�|Y:`@�����!t���Y:X��Y:Y@@���Y:X��Y:Y@@@@���Y:X��Y:`@@@@@���Y:<��Y:`@���°�$@@ ��%@@ �A�������	� the assertion is satisfiable and when it is true then the lhs and rhs can be optionally
          refined to the given new intervals /@���Zag��[��@@@@���Zag��[��@@���Zag��[��@@@A@@���W����Y:`@@���W����Y:`@���Р4abduce_binop_is_true���]����]�@���'negated����$bool���]���]�@@���]���]�@@@��@�����%Binop!t���]���]�&@@���]���]�&@@@��@����&option���]�,��]�2@�����!t���]�*��]�+@@���]�*��]�+@@@@���]�*��]�2@@@��@����&option���]�8��]�>@�����!t���]�6��]�7@@�� ]�6�]�7@@@@��]�6�]�>@@@����0abduction_result��]�B�]�R@@��]�B�]�R@@@��]�6�]�R@@@��]�*�]�R@@@��]��]�R@@@��]��]�R@@@@���O���@@ ���@@ �A�������
  � given [arith_lhs_opt bop arith_rhs_opt] and if not [negated], return either

    - [Unsatisfiable] iff lhs bop rhs = ∅

    - [Satisfiable (abduced_lhs_opt,abduced_rhs_opt)] iff lhs bop rhs ≠ ∅, such that (taking
      lhs=true if lhs_opt is [None], same for rhs) [abduced_lhs_opt=Some alhs] if (lhs bop rhs ≠
      ∅ => alhs⇔lhs) (and similarly for rhs)

    If [negated] then imagine a similar explanation replacing "= ∅" with "≠ ∅" and vice-versa. �@��+^SS�,f�.@@@@��.^SS�/f�.@@��1^SS�2f�.@@��4]���5]�R@��7]���8]�R@���Р%binop��@h04�Ah09@��@�����%Binop!t��Lh0<�Mh0C@@��Oh0<�Ph0C@@@��@����!t��Yh0G�Zh0H@@��\h0G�]h0H@@@��@����!t��fh0L�gh0M@@��ih0L�jh0M@@@����&option��qh0S�rh0Y@�����!t��zh0Q�{h0R@@��}h0Q�~h0R@@@@���h0Q��h0Y@@@���h0L��h0Y@@@���h0G��h0Y@@@���h0<��h0Y@@@@@���h00��h0Y@���h00��h0Y@���Р$unop���j[_��j[c@��@�����$Unop!t���j[f��j[l@@���j[f��j[l@@@��@����!t���j[p��j[q@@���j[p��j[q@@@����&option���j[w��j[}@�����!t���j[u��j[v@@���j[u��j[v@@@@���j[u��j[}@@@���j[p��j[}@@@���j[f��j[}@@@@@���j[[��j[}@���j[[��j[}@���Р(zero_inf���l���l�@����!t���l���l�@@���l���l�@@@@@���l��l�@���l��l�@���Р%ge_to���n����n��@��@�����&IntLit!t��n���n��@@��	n���
n��@@@����!t��n���n��@@��n���n��@@@��n���n��@@@@@��n���n��@��n���n��@@