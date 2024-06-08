Caml1999N028����   +         	)src/nullsafe/ThirdPartyAnnotationInfo.mli����  #Z  �  �  Y�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��	)src/nullsafe/ThirdPartyAnnotationInfo.mliG � ��G � �@@��G � ��G � �@@��G � ��G � �@�����*ocaml.text���@@ ���@@ �A�������	X In-memory storage the information about nullability annotation of third-party methods. �@��I � ��I �%@@@@��I � ��I �%@@��!I � ��"I �%@��$I � ��%I �%@���A�    �.signature_info��.K',�/K':@@@��Р(filename��6L=A�7L=I@@����&string��>L=K�?L=Q@@��AL=K�BL=Q@@@��DL=A�EM��@���)ocaml.doc���@@ ���@@ �A�������	/ File where the particular signature is stored �@��VL=S�WL=�@@@@��YL=S�ZL=�@@��\L=S�]L=�@@�Р+line_number��cM���dM��@@����#int��kM���lM��@@��nM���oM��@@@��qM���rN��@���-��@@ ��	@@ �A�������	! Line number with this signature @���M����M��@@@@���M����M��@@���M����M��@@�Р)signature���N����N��@@�����0ThirdPartyMethod!t���N����N��@@���N����N��@@@���N����N��@@@A@@���K''��N��@@���K''��N��@���A�    �+unique_repr���UQV��UQa@@@��Р*class_name���Vdh��Vdr@@�����0ThirdPartyMethod4fully_qualified_type���Vdt��Vd�@@���Vdt��Vd�@@@���Vdh��W��@@�Р+method_name���W����W��@@�����0ThirdPartyMethod+method_name���W����W��@@���W����W��@@@���W����X��@@�Р+param_types���X����X��@@����$list���X����X�@������0ThirdPartyMethod4fully_qualified_type���X����X��@@���X����X��@@@@���X����X�@@@��X���X�@@@A@�������@@ ���@@ �A�������
  a The minimum information that is needed to _uniquely_ identify the method. That why we don't

    - include e.g. return type, access quilifiers, or whether the method is static (because Java
    - overload resolution rules ignore these things). In contrast, parameter types are essential,
    - because Java allows several methods with different types. �@��P���TP@@@@��P���TP@@��P���TP@@��UQQ�X�@@��UQQ�X�@���Р.pp_unique_repr��'Z�(Z@��@�����&Format)formatter��3Z�4Z,@@��6Z�7Z,@@@��@����+unique_repr��@Z0�AZ;@@��CZ0�DZ;@@@����$unit��KZ?�LZC@@��NZ?�OZC@@@��QZ0�RZC@@@��TZ�UZC@@@@@��WZ�XZC@��ZZ�[ZC@���Р=unique_repr_of_java_proc_name��c\EI�d\Ef@��@������(Procname$Java!t��q\Ei�r\Ex@@��t\Ei�u\Ex@@@����+unique_repr��|\E|�}\E�@@��\E|��\E�@@@���\Ei��\E�@@@@@���\EE��\E�@���\EE��\E�@���A�    �'storage���^����^��@@@@A@@���^����^��@@���^����^��@���Р.create_storage���`����`��@��@����$unit���`����`��@@���`����`��@@@����'storage���`����`��@@���`����`��@@@���`����`��@@@@@���`����`��@���`����`��@���A�    �2file_parsing_error���b����b��@@@��Р+line_number���c����c��@@����#int���c����c��@@���c����c��@@@���c����c��@@�Р1unparsable_method���c����c��@@����&string���c����c�@@���c����c�@@@���c����c�@@�Р-parsing_error���c���c�@@�����0ThirdPartyMethod-parsing_error��c��	c�4@@��c��c�4@@@��c��c�4@@@A@@��b���c�5@@��b���c�5@���Р0pp_parsing_error��e7;�e7K@��@�����&Format)formatter��)e7N�*e7^@@��,e7N�-e7^@@@��@����2file_parsing_error��6e7b�7e7t@@��9e7b�:e7t@@@����$unit��Ae7x�Be7|@@��De7x�Ee7|@@@��Ge7b�He7|@@@��Je7N�Ke7|@@@@@��Me77�Ne7|@��Pe77�Qe7|@���Р7add_from_signature_file��Yg~��Zg~�@��@����'storage��ch���dh��@@��fh���gh��@@@���(filename����&string��rh���sh��@@��uh���vh��@@@���%lines����$list���h����h��@�����&string���h����h��@@���h����h��@@@@���h����h��@@@����&result���h����h��@�����'storage���h����h��@@���h����h��@@@�����2file_parsing_error���h����h��@@���h����h��@@@@���h����h��@@@���h����h��@@@���h����h��@@@���h����h��@@@@���x��S@@ ��T@@ �A�������	J Parse the information from the signature file, and add it to the storage ^@���i����i�E@@@@���i����i�E@@���i����i�E@@���g~~��h��@���g~~��h��@���Р5find_nullability_info���kGK��kG`@��@����'storage���kGc��kGj@@���kGc��kGj@@@��@����+unique_repr���kGn��kGy@@���kGn��kGy@@@����&option��kG��kG�@�����.signature_info��kG}�kG�@@��kG}�kG�@@@@��kG}�kG�@@@��kGn�kG�@@@��kGc�kG�@@@@���հ��@@ ���@@ �A�������	� The main method. Do we have an information about the third-party method? If we do not, or it is
    not a third-party method, returns None. Otherwise returns the nullability information. �@��*l���+m�T@@@@��-l���.m�T@@��0l���1m�T@@��3kGG�4kG�@��6kGG�7kG�@���Р7lookup_related_sig_file��?oVZ�@oVq@��@����'storage��IoVt�JoV{@@��LoVt�MoV{@@@���'package����&string��XoV��YoV�@@��[oV��\oV�@@@����&option��coV��doV�@�����&string��loV��moV�@@��ooV��poV�@@@@��roV��soV�@@@��uoV�voV�@@@��xoVt�yoV�@@@@���4��@@ ��@@ �A�������	b If the package is third-party, return the relevant .sig file to add signatures for this package. @���p����p�@@@@���p����p�@@���p����p�@@���oVV��oV�@���oVV��oV�@���Р	 lookup_related_sig_file_for_proc���r��r,@��@����'storage���r/��r6@@���r/��r6@@@��@������(Procname$Java!t���r:��rI@@���r:��rI@@@����&option���rT��rZ@�����&string���rM��rS@@���rM��rS@@@@���rM��rZ@@@���r:��rZ@@@���r/��rZ@@@@������p@@ ��q@@ �A�������	R If the function is third-party (based on its package), return relevant .sig file {@���s[[��s[�@@@@���s[[��s[�@@���s[[��s[�@@���r��rZ@���r��rZ@���Р3is_third_party_proc���u��� u��@��@����'storage��	u���
u��@@��u���u��@@@��@������(Procname$Java!t��u���u��@@��u���u��@@@����$bool��%u���&u��@@��(u���)u��@@@��+u���,u��@@@��.u���/u��@@@@������@@ ���@@ �A�������	� Checks whether a required procname comes from third-party code based on available .sig files and
    config flags. NOTE: considering config flags is done for compatibility with the legacy behaviour
    and will be removed in the future �@��?v���@x	�	�@@@@��Bv���Cx	�	�@@��Ev���Fx	�	�@@��Hu���Iu��@��Ku���Lu��@���Р2is_third_party_typ��Tz	�	��Uz	�	�@��@����'storage��^z	�	��_z	�
@@��az	�	��bz	�
@@@��@�����#Typ!t��mz	�
	�nz	�
@@��pz	�
	�qz	�
@@@����$bool��xz	�
�yz	�
@@��{z	�
�|z	�
@@@��~z	�
	�z	�
@@@���z	�	���z	�
@@@@���=��@@ ��@@ �A�������< See [is_third_party_proc]. #@���{

��{

8@@@@���{

��{

8@@���{

��{

8@@���z	�	���z	�
@���z	�	���z	�
@���Р9is_third_party_class_name���}
:
>��}
:
W@��@����'storage���}
:
Z��}
:
a@@���}
:
Z��}
:
a@@@��@�����-JavaClassName!t���}
:
e��}
:
t@@���}
:
e��}
:
t@@@����$bool���}
:
x��}
:
|@@���}
:
x��}
:
|@@@���}
:
e��}
:
|@@@���}
:
Z��}
:
|@@@@������k@@ ��l@@ �A�������< See [is_third_party_proc]. v@���~
}
}��~
}
�@@@@���~
}
}��~
}
�@@���~
}
}��~
}
�@@���}
:
:��}
:
|@���}
:
:��}
:
|@@