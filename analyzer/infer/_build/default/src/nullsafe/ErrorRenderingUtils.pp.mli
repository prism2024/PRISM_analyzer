Caml1999N028����   &         	$src/nullsafe/ErrorRenderingUtils.mli����  �    �  S�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text���@@ ���@@ �A�������	2 Helper tools for nicer rendering nullsafe error. �@��	$src/nullsafe/ErrorRenderingUtils.mliH � ��H � �@@@@��H � ��H � �@@��H � ��H � �@��
H � ��H � �@������$IStd��J � ��J � @@��J � ��J � @@��J � ��J � @������4UserFriendlyNullable��$O���%O�@�����A�    �!t��0P
�1P
@@@��Р3ExplainablyNullable��8Q�9Q.@������9explainably_nullable_kind��BQ2�CQK@@��EQ2�FQK@@@@@��HQ�IQK@���)ocaml.doc���@@ ���@@ �A�������	� Value that is nullable according to nullsafe semantics and conventions. It can be
            nullable because of an explicit annotation, models, default nullability conventions,
            etc. �@��ZRLT�[T@@@@��]RLT�^T@@��`RLT�aT@@�Р0UntrustedNonnull��gU%�hU5@������.untrusted_kind��qU9�rUG@@��tU9�uUG@@@@@��wU#�xUG@���/��@@ ��@@ �A�������
  7 Value is not nullable per se, but we still can not treat it as non-null in current mode.
            From the user perspective, it is a very different case: violations of this type need to
            be explained in a way so that it is clear why exactly can not nullsafe trust it in this
            context. #@���VHP��Yu�@@@@���VHP��Yu�@@���VHP��Yu�@@@A@@���P
��UG@�    �9explainably_nullable_kind���[����[��@@@��Р(Nullable���[����[��@�@@���[����[��@@�Р$Null���[����[��@�@@���[����[��@@@A@@���[����[��@�    �.untrusted_kind���]����]��@@@��Р1ThirdPartyNonnull���]����]��@�@@���]����]��@@�Р0UncheckedNonnull���]����]��@�@@���]����]��@@�Р5LocallyCheckedNonnull���]����]�@�@@���]����]�@@@A@@���]����]�@@���P
��]�@���Р0from_nullability���_��_,@��@�����+Nullability!t���_/��_<@@���_/��_<@@@����&option��_B�_H@�����!t��
_@�_A@@��_@�_A@@@@��_@�_H@@@��_/�_H@@@@@��_�_H@��_�_H@@��O��`IL@@���԰��@@ ���@@ �A�������	� "Effectively nullable values" from the user perspective. Depending on context, convention, and
    mode, Nullsafe treats such and such things as nullable or non-null. At some point this needs to
    be explain to the user. �@��-L�.N��@@@@��0L�1N��@@��3L�4N��@@��6O���7`IL@��9O���:`IL@���Р	&is_object_nullability_self_explanatory��BbNR�CbNx@���1object_expression����&string��NbN��ObN�@@��QbN��RbN�@@@��@�����*TypeOrigin!t��]bN��^bN�@@��`bN��abN�@@@����$bool��hbN��ibN�@@��kbN��lbN�@@@��nbN��obN�@@@��qbN{�rbN�@@@@���)��@@ ��@@ �A�������	� In order to understand why such and such object is nullable (or not nullable), we render its
    origin. In some cases this is redundant and adds extra noise for the user. @���c����d^@@@@���c����d^@@���c����d^@@���bNN��bN�@���bNN��bN�@���Р	&mk_nullsafe_issue_for_untrusted_values���f`d��f`�@���-nullsafe_mode�����,NullsafeMode!t���g����g��@@���g����g��@@@���.untrusted_kind�����4UserFriendlyNullable.untrusted_kind���h����h��@@���h����h��@@@���2bad_usage_location�����(Location!t���i����i�	@@���i����i�	@@@��@�����*TypeOrigin!t���j
��j
@@���j
��j
@@@�����-NullsafeIssue!t���k!��k0@@���k!��k0@@@���j
��k0@@@���i����k0@@@���h����k0@@@���g����k0@@@@�������@@ ���@@ �A�������
    Situation when we tried to use nonnull values in a nullsafe mode that does not trust them to be
    non-nullable: [untrusted_kind]. From the user perspective, this case is different from normal
    nullable assignment or dereference violation: what needs to be described is why does not this
    mode trust this value (and what are possible actions). NOTE: Location of the error will be NOT
    in the place when the value is used (that is [bad_usage_location]), but where the value is first
    obtained from. �@��l11�q	!	6@@@@��l11�q	!	6@@��	l11�
q	!	6@@��f``�k0@��f``�k0@���Р	+find_alternative_nonnull_method_description��s	8	<�s	8	g@��@�����*TypeOrigin!t��$s	8	j�%s	8	v@@��'s	8	j�(s	8	v@@@����&option��/s	8	��0s	8	�@�����&string��8s	8	z�9s	8	�@@��;s	8	z�<s	8	�@@@@��>s	8	z�?s	8	�@@@��As	8	j�Bs	8	�@@@@�������@@ ���@@ �A�������	� If type origin is the result of a nullable method call that have a known nonnullable alternative
    (the one that does the check inside), return the string representation of that alternative
    suitable for error messaging. �@��Rt	�	��Sv
L
p@@@@��Ut	�	��Vv
L
p@@��Xt	�	��Yv
L
p@@��[s	8	8�\s	8	�@��^s	8	8�_s	8	�@@