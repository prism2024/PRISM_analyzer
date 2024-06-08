Caml1999N028����   '         	%src/nullsafe/AnnotatedNullability.mli����  ;H  ?  $�  "������1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��	%src/nullsafe/AnnotatedNullability.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@�����*ocaml.text���@@ ���@@ �A�������
  � Nullability of a type in Java program (e.g. in a function or field declaration). It might come
    from explicit annotations (or lack of annotation), or from other sources, including conventions
    about defaults, models, or the mode nullsafe runs in. NOTE: This is complementary to
    {!InferredNullability.t}. {!InferredNullability} contains info about _actual_ nullability (what
    did nullsafe infer according to its flow-sensitive rules.). In contrast, AnnotatedNullability
    represents _formal_ type as it appears in the program code. NOTE: Nullsafe disregards
    user-provided annotations for local types, so annotated nullability applies only for types
    declared at methods and field level. �@��J � ��Qh�@@@@��J � ��Qh�@@��!J � ��"Qh�@��$J � ��%Qh�@���A�    �!t��.T���/T��@@@��Р(Nullable��6U���7U��@������/nullable_origin��@U���AU��@@��CU���DU��@@@@@��FU���GU��@@�Р5ProvisionallyNullable��MV���NV�@�������5ProvisionalAnnotation!t��YV��ZV�@@��\V��]V�@@@@@��_V���`V�@���)ocaml.doc���@@ ���@@ �A�������	# Exist only for specical run modes @��qV� �rV�H@@@@��tV� �uV�H@@��wV� �xV�H@@�Р1ThirdPartyNonnull��~WIM�WI^@�@@���WIK��WI^@@�Р0UncheckedNonnull���X_c��X_s@������8unchecked_nonnull_origin���X_w��X_�@@���X_w��X_�@@@@@���X_a��X_�@@�Р5LocallyTrustedNonnull���Y����Y��@�@@���Y����Y��@@�Р5LocallyCheckedNonnull���Z����Z��@�@@���Z����Z��@@�Р-StrictNonnull���[����[��@������5strict_nonnull_origin���[����[��@@���[����[��@@@@@���[����[��@@@A@���g��]@@ ��^@@ �A�������	& See {!Nullability.t} for explanation h@���S����S��@@@@���S����S��@@���S����S��@���(deriving���\����\��@��������'compare���\����\�@���\����\�@@@@���\����\�@@���\����\�@@���T����\�@�    �/nullable_origin��^	�^@@@��Р1AnnotatedNullable��_�_0@�@@��_�_0@�������@@ ���@@ �A�������	> The type is expicitly annotated with [@Nullable] in the code �@�� _2�!_u@@@@��#_2�$_u@@��&_2�'_u@@�Р;AnnotatedPropagatesNullable��-`vz�.`v�@�@@��1`vx�2`v�@���Ұ��@@ ���@@ �A�������	k If a function param is annotated as [@PropagatesNullable], this param is automatically
          nullable �@��Ba���Cb�@@@@��Ea���Fb�@@��Ha���Ib�@@�Р<HasPropagatesNullableInParam��Oc�Pc-@�@@��Sc�Tc-@�������@@ ���@@ �A�������	v If a method has at least one param marked as [@PropagatesNullable], return value is
          automatically nullable �@��dd.4�ee��@@@@��gd.4�he��@@��jd.4�ke��@@�Р0ModelledNullable��qf���rf��@�@@��uf���vf��@�����@@ ��@@ �A�������	7 nullsafe knows it is nullable via its internal models @���f����f�@@@@���f����f�@@���f����f�@@@A@���(deriving���g��g@��������'compare���g��g@���g��g@@@@���g��g@@���g��g@@���^��g@�    �8unchecked_nonnull_origin���i��i5@@@��Р0AnnotatedNonnull���j8<��j8L@�@@���j8:��j8L@���_��U@@ ��V@@ �A�������	o The type is explicitly annotated as non nullable via one of nonnull annotations Nullsafe
          recognizes `@���kMS��l��@@@@���kMS��l��@@���kMS��l��@@�Р1ImplicitlyNonnull���m����m��@�@@���m����m��@������w@@ ��x@@ �A�������	g Infer was run in mode where all not annotated (non local) types are treated as non
          nullable �@���n����o;P@@@@���n����o;P@@���n����o;P@@@A@@���i��m��@�    �5strict_nonnull_origin��qRV�qRk@@@��Р9ExplicitNonnullThirdParty��	rnr�
rn�@�@@��rnp�rn�@�������@@ ���@@ �A�������
  J Third party annotated as [@Nonnull] is considered strict. This is a controversial choice
          and might be an unsoundness issue. The reason is practical. The best we can do for third
          party is to register it in third party signature repository. Though this typically
          requires human review, in practice errors are inevitable. On the other hand, if the
          library owner explicitly annotated a function as nonnull, we assume this was made for
          reason. In practice, requiring such methods to be registered in third party folder, will
          introduce user friction but will not significantly increase safety. So our approach here
          is optimistic. If some particular method or library is known to contain wrong [@Nonnull]
          annotations, third party repository is a way to override this. �@��s���{��@@@@��!s���"{��@@��$s���%{��@@�Р/ModelledNonnull��+|���,|��@�@@��/|���0|��@���а��@@ ���@@ �A�������	; nullsafe knows it is non-nullable via its internal models �@��@|���A|�7@@@@��C|���D|�7@@��F|���G|�7@@�Р*StrictMode��M}8<�N}8F@�@@��Q}8:�R}8F@������@@ ���@@ �A�������	C under strict mode we consider non-null declarations to be trusted �@��b}8H�c}8�@@@@��e}8H�f}8�@@��h}8H�i}8�@@�Р-PrimitiveType��o~���p~��@�@@��s~���t~��@�����
@@ ��@@ �A�������	5 Primitive types are non-nullable by language design @���~����~��@@@@���~����~��@@���~����~��@@�Р,ImplicitThis���������@�@@���������@���6��,@@ ��-@@ �A�������	6 Implicit `this` param for virtual non-static methods 7@��������,@@@@��������,@@��������,@@�Р)EnumValue��� @-1�� @-:@�@@��� @-/�� @-:@���X��N@@ ��O@@ �A�������	[ Java enum value are statically initialized with non-nulls according to language semantics Y@��� A;A�� A;�@@@@��� A;A�� A;�@@��� A;A�� A;�@@�Р.SyntheticField��� B���� B��@�@@��� B���� B��@���z��p@@ ��q@@ �A�������	m Fake field that is not part of user codebase, but rather artifact of codegen/annotation
          processor {@��� C���� D-@@@@��� C���� D-@@��� C���� D-@@@A@���(deriving��� E.1�� E.9@��������'compare�� E.:� E.A@�� E.:� E.A@@@@��	 E.:�
 E.A@@�� E..� E.B@@��qRR� E.B@@��T��� E.B@�����������-ocaml.warning��&_none_A@ ��A@ �A�������#-32�@��A@ ��A@ �A@@@��A@ ��A@ �A@��A@ ��A@ �A��6T���7 E.BA���Р'compare��?T���@T��@��@������HT���IT��@@��KT���LT��@@@��@����'��TT���UT��@@��WT���XT��@@���+merlin.hide��=A@ ��>A@ �A�@���@@ ���@@ �A@����#int��jT���kT��A@��mT���nT��A@@��pT���qT��A@@��sT���tT��A@@@@��vT���w\�@��yT���z\�@���Р7compare_nullable_origin���^	��^@��@��������^	��^@@���^	��^@@@��@��������^	��^@@���^	��^@@���C��A@ ���A@ �A�@��5@@ ��6@@ �A@����B���^	��^A@���^	��^A@@���^	��^A@@���^	��^A@@@@���^��g@���^��g@���Р	 compare_unchecked_nonnull_origin���i��i5@��@�������i��i5@@���i��i5@@@��@����'���i��i5@@���i��i5@@�������A@ ���A@ �A�@��v@@ ��w@@ �A@��������i��i5A@���i��i5A@@���i��i5A@@���i��i5A@@@@���i��m��@���i��m��@���Р=compare_strict_nonnull_origin��qRV�qRk@��@������qRV�qRk@@��qRV�qRk@@@��@������qRV�qRk@@��qRV�qRk@@���Ű�A@ ��A@ �A�@���@@ ���@@ �A@����İ�-qRV�.qRkA@��0qRV�1qRkA@@��3qRV�4qRkA@@��6qRV�7qRkA@@@@��9qRR�: E.B@��<qRR�= E.B@���Р��DT���ET��@��@���� ��MT���NT��@@��PT���QT��@@@��@����,��YT���ZT��@@��\T���]T��@@�����AA@ ��BA@ �A�@���@@ ���@@ �A@������mT���nT��A@��pT���qT��A@@��sT���tT��A@@��vT���wT��A@@@@��yT���z\�@��|T���}\�@���Р7compare_nullable_origin���^	��^@��@��������^	��^@@���^	��^@@@��@��������^	��^@@���^	��^@@���F���A@ ���A@ �A�@��8@@ ��9@@ �A@����E���^	��^A@���^	��^A@@���^	��^A@@���^	��^A@@@@���^��g@���^��g@���Р	 compare_unchecked_nonnull_origin���i��i5@��@�������i��i5@@���i��i5@@@��@����*���i��i5@@���i��i5@@�������A@ ���A@ �A�@��y@@ ��z@@ �A@��������i��i5A@���i��i5A@@���i��i5A@@���i��i5A@@@@���i��m��@���i��m��@���Р=compare_strict_nonnull_origin��qRV�qRk@��@������qRV�qRk@@��qRV�qRk@@@��@������qRV�qRk@@��qRV� qRk@@���Ȱ�A@ ��A@ �A�@���@@ ���@@ �A@����ǰ�0qRV�1qRkA@��3qRV�4qRkA@@��6qRV�7qRkA@@��9qRV�:qRkA@@@@��<qRR�= E.B@��?qRR�@ E.B@���Р	��GT���HT��@��@����#��PT���QT��@@��ST���TT��@@@��@����/��\T���]T��@@��_T���`T��@@�����DA@ ��EA@ �A�@���@@ ���@@ �A@������pT���qT��A@��sT���tT��A@@��vT���wT��A@@��yT���zT��A@@@@��|T���}\�@��T����\�@���Р7compare_nullable_origin���^	��^@��@��������^	��^@@���^	��^@@@��@��������^	��^@@���^	��^@@���I���A@ ���A@ �A�@��;@@ ��<@@ �A@����H���^	��^A@���^	��^A@@���^	��^A@@���^	��^A@@@@���^��g@���^��g@���Р	 compare_unchecked_nonnull_origin���i��i5@��@����!���i��i5@@���i��i5@@@��@����-���i��i5@@���i��i5@@�������A@ ���A@ �A�@��|@@ ��}@@ �A@��������i��i5A@���i��i5A@@���i��i5A@@���i��i5A@@@@���i��m��@��i�m��@���Р=compare_strict_nonnull_origin��
qRV�qRk@��@������qRV�qRk@@��qRV�qRk@@@��@������qRV� qRk@@��"qRV�#qRk@@���˰�A@ ��A@ �A�@���@@ ���@@ �A@����ʰ�3qRV�4qRkA@��6qRV�7qRkA@@��9qRV�:qRkA@@��<qRV�=qRkA@@@@��?qRR�@ E.B@��BqRR�C E.B@@��ET���F E.BA@��HT���I E.BA���)ocaml.doc��.A@ ��/A@ �A�������'@inline�@��9A@ ��:A@ �A@@@��<A@ ��=A@ �A@��?A@ ��@A@ �A���	��EA@ ��FA@ �A�@���@@ ���@@ �A@��mT���n E.BA���Р/get_nullability��v GDH�w GDW@��@����!t��� GDZ�� GD[@@��� GDZ�� GD[@@@�����+Nullability!t��� GD_�� GDl@@��� GD_�� GDl@@@��� GDZ�� GDl@@@@@��� GDD�� GDl@��� GDD�� GDl@���Р6of_type_and_annotation��� Inr�� In�@���7is_callee_in_trust_list����$bool��� J���� J��@@��� J���� J��@@@���-nullsafe_mode�����,NullsafeMode!t��� K���� K��@@��� K���� K��@@@���.is_third_party����$bool��� L���� L��@@��� L���� L��@@@��@�����#Typ!t��� M���� M��@@��� M���� M��@@@��@������%Annot$Item!t��� N���� N�@@��� N���� N�@@@����!t��� O
�� O@@��� O
�� O@@@��� N���  O@@@�� M��� O@@@�� L��� O@@@�� K���	 O@@@�� J��� O@@@@�������@@ ���@@ �A�������
  � Given the type and its annotations, returns its nullability. NOTE: it does not take into account
    models etc., so this is intended to be used as a helper function for more high-level annotation
    processing. [is_callee_in_trust_list] defines whether the callee class is in the caller's
    explicitly provided trust list and therefore whether its nullability should be refined. �@�� P� S3�@@@@�� P�  S3�@@��" P�# S3�@@��% Inn�& O@��( Inn�) O@���Р	,can_be_considered_for_provisional_annotation��1 U���2 U��@��@����!t��; U���< U��@@��> U���? U��@@@����$bool��F U���G U��@@��I U���J U��@@@��L U���M U��@@@@�������@@ ���@@ �A�������
  � A method for the special mode where imaginary (provisional) [@Nullable] annotations are added to
    the code: see also [ProvisionalAnnotation.t]. This is a helper method useful for preliminary
    filtration of types that:

    - can be semantically annotated as [@Nullable] in the source code e.g. non-primitive types
    - makes logical sense to annotate - e.g. the source code is under control. �@��] V���^ [e@@@@��` V���a [e@@��c V���d [e@@��f U���g U��@��i U���j U��@���Р"pp��r ]gk�s ]gm@��@�����&Format)formatter��~ ]gp� ]g�@@��� ]gp�� ]g�@@@��@����!t��� ]g��� ]g�@@��� ]g��� ]g�@@@����$unit��� ]g��� ]g�@@��� ]g��� ]g�@@@��� ]g��� ]g�@@@��� ]gp�� ]g�@@@@@��� ]gg�� ]g�@��� ]gg�� ]g�@@