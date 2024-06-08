Caml1999N028����   $      
   	"src/nullsafe/OverAnnotatedRule.mli����  q  +  �  ������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��	"src/nullsafe/OverAnnotatedRule.mliG � ��G � �@@��G � ��G � �@@��G � ��G � �@�����*ocaml.text���@@ ���@@ �A�������
  7 Checks if a type in signature (e.g. return value) can be made more specific. NOTE: This rule is
    complementatary to assignment rule. While assignment rule checks a single assignment `lhs =
    rhs`, this rule checks checks ALL assignments to `lhs` in the program. NOTE: Violation of this
    rule is not a type violation, hence it should never be surfaced as error: `lhs`'s type can be
    intentionally made broad by code author (e.g. to anticipate future changes in the
    implementation). Heuristits are required to correctly surface overannotated rule to the user.
    This rule is useful for some scenarios, especially for nullability code conversions when it is
    expected that some signatures were annotated with [@Nullable] defensively, so surfacing such
    cases can improve API and make migration smooth. �@��I � ��Q�@@@@��I � ��Q�@@��!I � ��"Q�@��$I � ��%Q�@���A�    �)violation��.S�/S@@@@A@���(deriving��5S�6S @��������'compare��AS!�BS(@��DS!�ES(@@@@��GS!�HS(@@��JS�KS)@@��MS�NS)@@��PS�QS)@�����������-ocaml.warning��&_none_A@ ��A@ �A�������#-32�@��A@ ��A@ �A@@@��A@ ��A@ �A@��A@ ��A@ �A��tS�uS)A���Р1compare_violation��}S�~S@��@����Y���S��S@@���S��S@@@��@����e���S��S@@���S��S@@���+merlin.hide��=A@ ��>A@ �A�@��1@@ ��2@@ �A@����#int���S��SA@���S��SA@@���S��SA@@���S��SA@@@@���S��S)@���S��S)@@���S��S)A@���S��S)A���)ocaml.doc��eA@ ��fA@ �A�������'@inline`@��pA@ ��qA@ �A@@@��sA@ ��tA@ �A@��vA@ ��wA@ �A���@��|A@ ��}A@ �A�@��p@@ ��q@@ �A@���S��S)A���Р%check���U+/��U+4@���$what�����+Nullability!t���U+<��U+I@@���U+<��U+I@@@���2by_rhs_upper_bound�����+Nullability!t��
U+`�U+m@@��U+`�U+m@@@����&result��U+��U+�@�����$unit��U+r�U+v@@��!U+r�"U+v@@@�����)violation��*U+x�+U+�@@��-U+x�.U+�@@@@��0U+q�1U+�@@@��3U+M�4U+�@@@��6U+7�7U+�@@@@���)ocaml.doc���@@ ���@@ �A�������
  1 Checks if the declared type for `what` can be narrowed, based on the information about all
    assignments `what = rhs_i`. If an upper bound of `rhs_i` over ALL assignents `what = rhs_i` that
    exist in the program is a _strict_ subtype of lhs, `lhs`'s type can be narrowed to be that upper
    bound. �@��HV���IY��@@@@��KV���LY��@@��NV���OY��@@��QU++�RU+�@��TU++�UU+�@���A�    �.violation_type��^[���_[��@@@��Р0FieldOverAnnoted��f\���g\��@�������)Fieldname!t��r\���s\��@@��u\���v\��@@@@@��x\���y\��@@�Р3ReturnOverAnnotated��]� ��]�@��������(Procname$Java!t���]���]�&@@���]���]�&@@@@@���]����]�&@���]��*@@ ��+@@ �A�������	3 Return value of a method can be made non-nullable 5@���]�(��]�`@@@@���]�(��]�`@@���]�(��]�`@@@A@���(deriving���^ad��^al@��������'compare���^am��^at@���^am��^at@@@@���^am��^at@@���^aa��^au@@���[����^au@@���[����^au@�����������|��{A@ ��|A@ �A�������zu@���A@ ���A@ �A@@@���A@ ���A@ �A@���A@ ���A@ �A���[����^auA���Р6compare_violation_type���[����[��@��@��������[��� [��@@��[���[��@@@��@�������[���[��@@��[���[��@@���y���A@ ���A@ �A�@���@@ ���@@ �A@����x��[��� [��A@��"[���#[��A@@��%[���&[��A@@��([���)[��A@@@@��+[���,^au@��.[���/^au@@��1[���2^auA@��4[���5^auA���w���A@ ���A@ �A�������v�@���A@ ���A@ �A@@@���A@ ���A@ �A@���A@ ���A@ �A�������A@ ���A@ �A�@���@@ ���@@ �A@��W[���X^auA���Р5violation_description��``w{�a`w�@��@����)violation��j`w��k`w�@@��m`w��n`w�@@@��@����.violation_type��w`w��x`w�@@��z`w��{`w�@@@����&string���`w���`w�@@���`w���`w�@@@���`w���`w�@@@���`w���`w�@@@@@���`ww��`w�@���`ww��`w�@@