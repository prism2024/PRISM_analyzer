Caml1999N028����         	   >src/base/CommandLineOption.mli����  �  �  Y&  T�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text���@@ ���@@ �A�������	2 Definition and parsing of command line arguments �@��>src/base/CommandLineOption.mliH � ��H � �@@@@��H � ��H � �@@��H � ��H � �@��
H � ��H � �@������$IStd��J � ��J � @@��J � ��J � @@��J � ��J � @���Р%warnf��#L�$L@��@����&format��-L+�.L1@���!a��4L�5L@@@������&Format)formatter��?L�@L#@@��BL�CL#@@@�����$unit��KL%�LL)@@��NL%�OL)@@@@��QL�RL1@@@��!a��WL5�XL7@@@��ZL�[L7@@@@���)ocaml.doc���@@ ���@@ �A�������	8 Print to stderr in case of error, fails in strict mode @��lM88�mM8u@@@@��oM88�pM8u@@��rM88�sM8u@@��uL�vL7@��xL�yL7@���A�    �*parse_mode���Ow|��Ow�@@@��Р,InferCommand���P����P��@�@@���P����P��@���4��/@@ ��0@@ �A�������	( parse arguments as arguments for infer :@���P����P��@@@@���P����P��@@���P����P��@@�Р%Javac���Q����Q��@�@@���Q����Q��@���V��Q@@ ��R@@ �A�������	- parse arguments passed to the Java compiler \@���Q����Q�@@@@���Q����Q�@@���Q����Q�@@�Р'NoParse���R��R@�@@���R	��R@���x��s@@ ��t@@ �A�������	@ all arguments are anonymous arguments, no parsing is attempted ~@���R��RY@@@@���R��RY@@���R��RY@@@A@���(deriving���SZ]��SZe@��������'compare���SZf��SZm@���SZf� SZm@@@@��SZf�SZm@@��SZZ�SZn@@��Oww�	SZn@@��Oww�SZn@�����������-ocaml.warning��&_none_A@ ��A@ �A�������#-32�@��A@ ��A@ �A@@@��A@ ��A@ �A@��A@ ��A@ �A��/Oww�0SZnA���Р2compare_parse_mode��8Ow|�9Ow�@��@�������AOw|�BOw�@@��DOw|�EOw�@@@��@����̰�MOw|�NOw�@@��POw|�QOw�@@���+merlin.hide��=A@ ��>A@ �A�@���@@ ���@@ �A@����#int��cOw|�dOw�A@��fOw|�gOw�A@@��iOw|�jOw�A@@��lOw|�mOw�A@@@@��oOww�pSZn@��rOww�sSZn@@��uOww�vSZnA@��xOww�ySZnA���)ocaml.doc��eA@ ��fA@ �A�������'@inline%@��pA@ ��qA@ �A@@@��sA@ ��tA@ �A@��vA@ ��wA@ �A���@��|A@ ��}A@ �A�@��5@@ ��6@@ �A@���Oww��SZnA���Р-is_originator���Upt��Up�@����$bool���Up���Up�@@���Up���Up�@@@@@���Upp��Up�@���Upp��Up�@���Р-init_work_dir���W����W��@����&string���W����W��@@���W����W��@@@@@���W����W��@���W����W��@���A�    �!t���k����k��@����!a���k����k��@@@B@@@A����*deprecated����$list���l����l��@�����&string���l����l��@@���l����l��@@@@���l��� l��@@@���$long����&string��m���m��@@��m���m��@@@���%short����$char��n���n��@@��n���n��@@@���*parse_mode����*parse_mode��)o�	�*o�@@��,o�	�-o�@@@���'in_help����$list��8p<�9p@@���������,InferCommand!t��Fp#�Gp1@@��Ip#�Jp1@@@�����&string��Rp4�Sp:@@��Up4�Vp:@@@@��Xp#�Yp:@@@@��[p"�\p@@@@���$meta����&string��gqAL�hqAR@@��jqAL�kqAR@@@��@����&string��trSX�urS^@@��wrSX�xrS^@@@��!a��}s_d�~s_f@@@���rSX��s_f@@@���qAF��s_f@@@���p��s_f@@@���o����s_f@@@���n����s_f@@@���m����s_f@@@���l����s_f@@@���8��3@@ ��4@@ �A�������
   The [mk_*] functions declare command line options, while [parse] parses then according to the
    declared options.

    The arguments of the declaration functions are largely treated uniformly:

    - [long] declares the option [--long]
    - [short] declares the option [-short] as an alias
    - [deprecated] declares the option [-key] as an alias, for each [key] in [deprecated]
    - [default] specifies the default value
    - [default_to_string] is used to document the default value
    - [f] specifies a transformation to be performed on the parsed value before setting the config
      variable
    - [symbols] is an association list sometimes used in place of [f]
    - [parse_mode] declares which parse mode the option is for
    - [in_help] indicates the man pages in which the command should be documented, as generated by
      calling infer with --help. Otherwise it appears only in --help-full.
    - [meta] is a meta-variable naming the parsed value for documentation purposes
    - a documentation string >@���Y����j��@@@@���Y����j��@@���Y����j��@@���k����s_f@@���k����s_f@���Р&mk_set���uhl��uhr@��@����#ref���uhx��uh{@���!a���uhu��uhw@@@@���uhu��uh{@@@��@��!a���uh��uh�@@@����!t���uh���uh�@�����$unit���uh���uh�@@���uh���uh�@@@@���uh���uh�@@@���uh��uh�@@@���uhu��uh�@@@@�������@@ ���@@ �A�������	Y [mk_set variable value] defines a command line option which sets [variable] to [value]. �@��v���v��@@@@��v���v��@@��v���	v��@@��uhh�uh�@��uhh�uh�@���Р'mk_bool��x���x��@���-deprecated_no����$list��#x��$x�@�����&string��,x�	�-x�@@��/x�	�0x�@@@@��2x�	�3x�@@@���'default����$bool��>x�!�?x�%@@��Ax�!�Bx�%@@@���!f��@����$bool��Ox�-�Px�1@@��Rx�-�Sx�1@@@����$bool��Zx�5�[x�9@@��]x�5�^x�9@@@��`x�-�ax�9@@@����!t��hx�G�ix�H@�����#ref��qx�C�rx�F@�����$bool��zx�>�{x�B@@��}x�>�~x�B@@@@���x�>��x�F@@@@���x�>��x�H@@@���x�)��x�H@@@���x���x�H@@@���x����x�H@@@@���2��-@@ ��.@@ �A�������
  � [mk_bool long short doc] defines a [bool ref] set by the command line flag [--long] (and [-s]),
    and cleared by the flag [--no-long] (and [-S]). If [long] already has a "no-" prefix, or [s] is
    capital, then the existing prefixes will instead be removed. The default value is [false] unless
    overridden by [~default:true]. The [doc] string will be prefixed with either "Activates:" or
    "Deactivates:", so should be phrased accordingly. 8@���yII��}	�
@@@@���yII��}	�
@@���yII��}	�
@@���x����x�H@���x����x�H@���Р-mk_bool_group���

��

"@���-deprecated_no����$list��� @
%
@�� @
%
D@�����&string��� @
%
9�� @
%
?@@��� @
%
9�� @
%
?@@@@��� @
%
9�� @
%
D@@@���'default����$bool��� A
E
S�� A
E
W@@��� A
E
S�� A
E
W@@@���!f��@����$bool��� B
X
a�� B
X
e@@��� B
X
a�� B
X
e@@@����$bool��� B
X
i�� B
X
m@@��� B
X
i�� B
X
m@@@��� B
X
a�� B
X
m@@@����!t�� C
o
�� C
o
�@���@����$list�� C
o
~� C
o
�@�����#ref�� C
o
z� C
o
}@�����$bool��  C
o
u�! C
o
y@@��# C
o
u�$ C
o
y@@@@��& C
o
u�' C
o
}@@@@��) C
o
u�* C
o
�@@@��@����$list��3 C
o
��4 C
o
�@�����#ref��< C
o
��= C
o
�@�����$bool��E C
o
��F C
o
�@@��H C
o
��I C
o
�@@@@��K C
o
��L C
o
�@@@@��N C
o
��O C
o
�@@@����#ref��V C
o
��W C
o
�@�����$bool��_ C
o
��` C
o
�@@��b C
o
��c C
o
�@@@@��e C
o
��f C
o
�@@@��h C
o
��i C
o
�@@@��k C
o
u�l C
o
�@@@@��n C
o
t�o C
o
�@@@��q B
X
]�r C
o
�@@@��t A
E
J�u C
o
�@@@��w @
%
*�x C
o
�@@@@�����@@ ��@@ �A�������	� [mk_bool_group children not_children] behaves as [mk_bool] with the addition that all the
    [children] are also set and the [no_children] are unset. A child can be unset by including
    "--no-child" later in the arguments. #@��� D
�
��� F`�@@@@��� D
�
��� F`�@@��� D
�
��� F`�@@���

�� C
o
�@���

�� C
o
�@���Р&mk_int��� H���� H��@���'default����#int��� H���� H��@@��� H���� H��@@@���1default_to_string��@����#int��� H���� H��@@��� H���� H��@@@����&string��� H���� H��@@��� H���� H��@@@��� H���� H��@@@���!f��@����#int��� H���� H��@@��� H���� H��@@@����#int��� H���� H��@@��� H���� H��@@@��� H���� H��@@@����!t��� H���� H��@�����#ref��� H���� H��@�����#int�� H��� H��@@�� H��� H��@@@@��
 H��� H��@@@@�� H��� H��@@@�� H��� H��@@@�� H��� H��@@@�� H��� H��@@@@@�� H��� H��@�� H��� H��@���Р*mk_int_opt��% J���& J��@���'default����#int��1 K�	�2 K�@@��4 K�	�5 K�@@@���1default_to_string��@����&option��B K�(�C K�.@�����#int��K K�$�L K�'@@��N K�$�O K�'@@@@��Q K�$�R K�.@@@����&string��Y K�2�Z K�8@@��\ K�2�] K�8@@@��_ K�$�` K�8@@@���!f��@����#int��m K�A�n K�D@@��p K�A�q K�D@@@����#int��x K�H�y K�K@@��{ K�H�| K�K@@@��~ K�A� K�K@@@����!t��� K�_�� K�`@�����#ref��� K�[�� K�^@�����&option��� K�T�� K�Z@�����#int��� K�P�� K�S@@��� K�P�� K�S@@@@��� K�P�� K�Z@@@@��� K�P�� K�^@@@@��� K�P�� K�`@@@��� K�=�� K�`@@@��� K��� K�`@@@��� K� �� K�`@@@@@��� J���� K�`@��� J���� K�`@���Р,mk_float_opt��� Mbf�� Mbr@���'default����%float��� Nu��� Nu�@@��� Nu��� Nu�@@@���1default_to_string��@����&option��� Nu��� Nu�@�����%float��� Nu��� Nu�@@��� Nu��� Nu�@@@@��� Nu��� Nu�@@@����&string��� Nu��� Nu�@@��� Nu��� Nu�@@@��� Nu��  Nu�@@@����!t�� Nu�� Nu�@�����#ref�� Nu�� Nu�@�����&option�� Nu�� Nu�@�����%float��" Nu��# Nu�@@��% Nu��& Nu�@@@@��( Nu��) Nu�@@@@��+ Nu��, Nu�@@@@��. Nu��/ Nu�@@@��1 Nu��2 Nu�@@@��4 Nuw�5 Nu�@@@@@��7 Mbb�8 Nu�@��: Mbb�; Nu�@���Р)mk_string��C P���D P��@���'default����&string��O Q���P Q��@@��R Q���S Q��@@@���1default_to_string��@����&string��` Q��a Q�
@@��c Q��d Q�
@@@����&string��k Q��l Q�@@��n Q��o Q�@@@��q Q��r Q�@@@���!f��@����&string�� Q��� Q�#@@��� Q��� Q�#@@@����&string��� Q�'�� Q�-@@��� Q�'�� Q�-@@@��� Q��� Q�-@@@����!t��� Q�=�� Q�>@�����#ref��� Q�9�� Q�<@�����&string��� Q�2�� Q�8@@��� Q�2�� Q�8@@@@��� Q�2�� Q�<@@@@��� Q�2�� Q�>@@@��� Q��� Q�>@@@��� Q���� Q�>@@@��� Q���� Q�>@@@@@��� P���� Q�>@��� P���� Q�>@���Р-mk_string_opt��� S@D�� S@Q@���'default����&string��� TTb�� TTh@@��� TTb�� TTh@@@���1default_to_string��@����&option��� Ui��� Ui�@�����&string��� Ui��� Ui�@@��� Ui��� Ui�@@@@��� Ui��� Ui�@@@����&string��� Ui��  Ui�@@�� Ui�� Ui�@@@�� Ui�� Ui�@@@���!f��@����&string�� V��� V��@@�� V��� V��@@@����&string�� V��� V��@@��! V���" V��@@@��$ V���% V��@@@���(mk_reset����$bool��0 W���1 W��@@��3 W���4 W��@@@����!t��; X���< X��@�����#ref��D X���E X��@�����&option��M X���N X��@�����&string��V X���W X��@@��Y X���Z X��@@@@��\ X���] X��@@@@��_ X���` X��@@@@��b X���c X��@@@��e W���f X��@@@��h V���i X��@@@��k Uin�l X��@@@��n TTY�o X��@@@@�����@@ ��@@ �A�������	� An option "--[long]-reset" is automatically created that resets the reference to None when found
    on the command line, unless [mk_reset] is false. @�� Y���� ZH@@@@��� Y���� ZH@@��� Y���� ZH@@��� S@@�� X��@��� S@@�� X��@���Р.mk_string_list��� \���� \��@���'default����$list��� ]���� ]��@�����&string��� ]���� ]��@@��� ]���� ]��@@@@��� ]���� ]��@@@���1default_to_string��@����$list��� ^���� ^��@�����&string��� ^���� ^��@@��� ^���� ^��@@@@��� ^���� ^��@@@����&string��� ^���� ^��@@��� ^���� ^��@@@��� ^���� ^��@@@���!f��@����&string��� _���� _��@@��� _���� _��@@@����&string��� _���� _��@@��� _���� _��@@@��� _���� _��@@@����!t�� `�� `�@�����#ref��
 `�� `�@������'RevList!t�� `�� `�@�����&string�� `� � `�@@��! `� �" `�@@@@��$ `� �% `�@@@@��' `� �( `�@@@@��* `� �+ `�@@@��- _���. `�@@@��0 ^���1 `�@@@��3 ]���4 `�@@@@���ٰ��@@ ���@@ �A�������
  � [mk_string_list] defines a [string list ref], initialized to [\[\]] unless overridden by
    [~default]. Each argument of an occurrence of the option will be prepended to the list, so the
    final value will be in the reverse order they appeared on the command line.

    An option "--[long]-reset" is automatically created that resets the list to [] when found on the
    command line. �@��D a�E f��@@@@��G a�H f��@@��J a�K f��@@��M \���N `�@��P \���Q `�@���Р-mk_string_map��Y h���Z h��@���'default������&String#Map!t��i i���j i��@�����&string��r i���s i��@@��u i���v i��@@@@��x i���y i��@@@���1default_to_string��@������&String#Map!t��� j���� j�@�����&string��� j���� j��@@��� j���� j��@@@@��� j���� j�@@@����&string��� j�	�� j�@@��� j�	�� j�@@@��� j���� j�@@@����!t��� k.�� k/@�����#ref��� k*�� k-@�������&String#Map!t��� k�� k)@�����&string��� k�� k@@��� k�� k@@@@��� k�� k)@@@@��� k�� k-@@@@��� k�� k/@@@��� j���� k/@@@��� i���� k/@@@@@��� h���� k/@��� h���� k/@���Р'mk_path��� m15�� m1<@���'default����&string��� n?I�� n?O@@��� n?I�� n?O@@@���1default_to_string��@����&string��	 n?g�	 n?m@@��	 n?g�	 n?m@@@����&string��	 n?q�	 n?w@@��	 n?q�	 n?w@@@��	 n?g�	 n?w@@@���!f��@����&string��	+ n?��	, n?�@@��	. n?��	/ n?�@@@����&string��	6 n?��	7 n?�@@��	9 n?��	: n?�@@@��	< n?��	= n?�@@@����!t��	D n?��	E n?�@�����#ref��	M n?��	N n?�@�����&string��	V n?��	W n?�@@��	Y n?��	Z n?�@@@@��	\ n?��	] n?�@@@@��	_ n?��	` n?�@@@��	b n?|�	c n?�@@@��	e n?S�	f n?�@@@��	h n?A�	i n?�@@@@���	��
	@@ ��

@@ �A�������	� like [mk_string] but will resolve the string into an absolute path so that children processes
    agree on the absolute path that the option represents 
@��	y o���	z p@@@@@��	| o���	} p@@@��	 o���	� p@@@��	� m11�	� n?�@��	� m11�	� n?�@���Р+mk_path_opt��	� rBF�	� rBQ@���'default����&string��	� sT_�	� sTe@@��	� sT_�	� sTe@@@���1default_to_string��@����&option��	� sT��	� sT�@�����&string��	� sT}�	� sT�@@��	� sT}�	� sT�@@@@��	� sT}�	� sT�@@@����&string��	� sT��	� sT�@@��	� sT��	� sT�@@@��	� sT}�	� sT�@@@����!t��	� sT��	� sT�@�����#ref��	� sT��	� sT�@�����&option��	� sT��	� sT�@�����&string��	� sT��	� sT�@@��	� sT��	� sT�@@@@��	� sT��	� sT�@@@@��	� sT��	� sT�@@@@��	� sT��	� sT�@@@��	� sTi�	� sT�@@@��	� sTV�	� sT�@@@@���	���
�@@ ��
�@@ �A�������	B analogous of [mk_string_opt] with the extra feature of [mk_path] 
�@��
 t���
 t��@@@@��
 t���
 t��@@��
 t���
 t��@@��
 rBB�
 sT�@��
 rBB�
 sT�@���Р,mk_path_list��
# v���
$ v�@���'default����$list��
/ w	�
0 w	@�����&string��
8 w	�
9 w	@@��
; w	�
< w	@@@@��
> w	�
? w	@@@���1default_to_string��@����$list��
L w	>�
M w	B@�����&string��
U w	7�
V w	=@@��
X w	7�
Y w	=@@@@��
[ w	7�
\ w	B@@@����&string��
c w	F�
d w	L@@��
f w	F�
g w	L@@@��
i w	7�
j w	L@@@����!t��
q w	f�
r w	g@�����#ref��
z w	b�
{ w	e@������'RevList!t��
� w	X�
� w	a@�����&string��
� w	Q�
� w	W@@��
� w	Q�
� w	W@@@@��
� w	Q�
� w	a@@@@��
� w	Q�
� w	e@@@@��
� w	Q�
� w	g@@@��
� w	#�
� w	g@@@��
� w	�
� w	g@@@@���
F��A@@ ��B@@ �A�������	C analogous of [mk_string_list] with the extra feature of [mk_path] L@��
� xhh�
� xh�@@@@��
� xhh�
� xh�@@��
� xhh�
� xh�@@��
� v���
� w	g@��
� v���
� w	g@���Р)mk_symbol��
� z���
� z��@���'default��!a��
� {���
� {��@@@���'symbols����$list��
� {���
� {��@��������&string��
� {���
� {��@@��
� {���
� {��@@@���!a��
� {���
� {��@@@@��
� {���
� {��@@@@��
� {���
� {��@@@���"eq��@��!a�� {��� {��@@@��@��!a�� {��� {��@@@����$bool�� {� � {�@@�� {� � {�@@@�� {��� {�@@@�� {��� {�@@@���!f��@��!a��) {��* {�@@@��!a��/ {��0 {�@@@��2 {��3 {�@@@����!t��: {�!�; {�"@�����#ref��C {��D {� @���!a��J {��K {�@@@@��M {��N {� @@@@��P {��Q {�"@@@��S {�	�T {�"@@@��V {���W {�"@@@��Y {���Z {�"@@@��\ {���] {�"@@@@������@@ ���@@ �A�������	} [mk_symbol long symbols] defines a command line flag [--long <symbol>] where [(<symbol>,_)] is
    an element of [symbols]. @��m |##�n }��@@@@��p |##�q }��@@��s |##�t }��@@��v z���w {�"@��y z���z {�"@���Р-mk_symbol_opt��� ���� ��@���'symbols����$list��� ���� ��@��������&string��� ���� ��@@��� ���� ��@@@���!a��� ���� ��@@@@��� ���� ��@@@@��� ���� ��@@@���!f��@��!a��� ���� ��@@@��!a��� ���� ��@@@��� ���� ��@@@���(mk_reset����$bool��� ���� ��@@��� ���� ��@@@����!t��� �
�� �@�����#ref��� ��� �	@�����&option��� ���� �@���!a��� ���� ��@@@@��� ���� �@@@@��� ���� �	@@@@��� ���� �@@@��� ���� �@@@��� ���� �@@@�� ��� �@@@@�������@@ ���@@ �A�������	� [mk_symbol_opt] is similar to [mk_symbol] but defaults to [None]. If [mk_reset] is false then do
    not create an additional --[long]-reset option to reset the value of the option to [None]. �@�� �� �q�@@@@�� �� �q�@@�� �� �q�@@�� ��� �@�� ��� �@���Р-mk_symbol_seq��' ����( ���@���'default����$list��3 ����4 ���@���!a��: ����; ���@@@@��= ����> ���@@@���'symbols����$list��I ���J ��@��������&string��U ���V ��@@��X ���Y ��@@@���!a��_ ���` ��@@@@��b ���c ��@@@@��e ���f ��@@@���"eq��@��!a��q �� �r ��"@@@��@��!a��y ��&�z ��(@@@����$bool��� ��,�� ��0@@��� ��,�� ��0@@@��� ��&�� ��0@@@��� �� �� ��0@@@����!t��� ��A�� ��B@�����#ref��� ��=�� ��@@�����$list��� ��8�� ��<@���!a��� ��5�� ��7@@@@��� ��5�� ��<@@@@��� ��5�� ��@@@@@��� ��5�� ��B@@@��� ���� ��B@@@��� ����� ��B@@@��� ����� ��B@@@@���c��^@@ ��_@@ �A�������	� [mk_symbol_seq long symbols] defines a command line flag [--long <symbol sequence>] where
    [<symbol sequence>] is a comma-separated sequence of [<symbol>]s such that [(<symbol>,_)] is an
    element of [symbols]. i@��� �CC�� �!@@@@��� �CC�� �!@@��� �CC�� �!@@��� ����� ��B@��� ����� ��B@���Р'mk_json��� �#'�� �#.@����!t��� �#D�� �#E@�����#ref��� �#@�� �#C@�������&Yojson%Basic!t�� �#1� �#?@@�� �#1� �#?@@@@�� �#1� �#C@@@@��
 �#1� �#E@@@@@�� �##� �#E@�� �##� �#E@���Р'mk_anon�� �GK� �GR@��@����$unit��# �GU�$ �GY@@��& �GU�' �GY@@@����#ref��. �Gn�/ �Gq@������'RevList!t��9 �Gd�: �Gm@�����&string��B �G]�C �Gc@@��E �G]�F �Gc@@@@��H �G]�I �Gm@@@@��K �G]�L �Gq@@@��N �GU�O �Gq@@@@���'warning��U �rw�V �r~@�������#-32�@��` �r�a �r�@@@@��c �r�d �r�@@��f �rt�g �r�@�����@@ ��@@ �A�������	� [mk_anon ()] defines a [string list ref] of the anonymous command line arguments, in the reverse
    order they appeared on the command line. @��w ����x ��@@@@��z ����{ ��@@��} ����~ ��@@��� �GG�� �r�@��� �GG�� �r�@���Р/mk_rest_actions��� � �� �/@���*parse_mode����*parse_mode��� �2C�� �2M@@��� �2C�� �2M@@@���'in_help����$list��� �Nv�� �Nz@���������,InferCommand!t��� �N]�� �Nk@@��� �N]�� �Nk@@@�����&string��� �Nn�� �Nt@@��� �Nn�� �Nt@@@@��� �N]�� �Nt@@@@��� �N\�� �Nz@@@��@����&string��� �{��� �{�@@��� �{��� �{�@@@���%usage����&string��� ����� ���@@��� ����� ���@@@��@��@����&string��� ����� ���@@��� ����� ���@@@����*parse_mode��� ����� ���@@��  ���� ���@@@�� ���� ���@@@����#ref�� ���� ���@�����$list�� ���� ���@�����&string�� ���� ���@@��  ����! ���@@@@��# ����$ ���@@@@��& ����' ���@@@��) ����* ���@@@��, ����- ���@@@��/ �{��0 ���@@@��2 �NS�3 ���@@@��5 �27�6 ���@@@@���۰��@@ ���@@ �A�������
  C [mk_rest_actions doc ~usage command_to_parse_mode] defines a [string list ref] of the command
    line arguments following ["--"], in the reverse order they appeared on the command line. [usage]
    is the usage message in case of parse errors or if --help is passed. For example, calling
    [mk_action] and parsing [exe -opt1 -opt2 -- arg1 arg2] will result in the returned ref
    containing [arg2; arg1]. Additionally, the first arg following ["--"] is passed to
    [command_to_parse_mode] to obtain the parse action that will be used to parse the remaining
    arguments. �@��F ����G �@@@@��I ����J �@@��L ����M �@@��O ��P ���@��R ��S ���@���A�    �+command_doc��\ ��] �$@@@@A@@��_ ��` �$@@��b ��c �$@���Р.mk_command_doc��k �&*�l �&8@���%title����&string��w �;F�x �;L@@��z �;F�{ �;L@@@���'section����#int��� �MZ�� �M]@@��� �MZ�� �M]@@@���'version����&string��� �^k�� �^q@@��� �^k�� �^q@@@���$date����&string��� �r|�� �r�@@��� �r|�� �r�@@@���1short_description����&string��� ����� ���@@��� ����� ���@@@���(synopsis����$list��� ����� ���@�������(Cmdliner'Manpage%block��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@���+description����$list��� ����� ���@�������(Cmdliner'Manpage%block��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@���'options������'Prepend�� ��� ��@@�����$list�� ��*� ��.@�������(Cmdliner'Manpage%block�� ��� ��)@@�� ��� ��)@@@@�� ��� ��.@@@@��! ���" ��.@@����'Replace��) ��1�* ��9@@�����$list��2 ��T�3 ��X@�������(Cmdliner'Manpage%block��? ��=�@ ��S@@��B ��=�C ��S@@@@��E ��=�F ��X@@@@��H ��1�I ��X@@@@@��K ���L ��Y@@@���+exit_status����$list��W �Z��X �Z�@�������(Cmdliner'Manpage%block��d �Zl�e �Z�@@��g �Zl�h �Z�@@@@��j �Zl�k �Z�@@@���+environment����$list��v ����w ���@�������(Cmdliner'Manpage%block��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@���%files����$list��� ����� ���@�������(Cmdliner'Manpage%block��� ����� ���@@��� ����� ���@@@@��� ����� ���@@@���%notes����$list��� ���� ��@�������(Cmdliner'Manpage%block��� ����� �� @@��� ����� �� @@@@��� ����� ��@@@���$bugs����$list��� �(�� �,@�������(Cmdliner'Manpage%block��� ��� �'@@��� ��� �'@@@@��� ��� �,@@@���(examples����$list��� �-S�� �-W@�������(Cmdliner'Manpage%block��� �-<�  �-R@@�� �-<� �-R@@@@�� �-<� �-W@@@���(see_also����$list�� �X~� �X�@�������(Cmdliner'Manpage%block�� �Xg� �X}@@��! �Xg�" �X}@@@@��$ �Xg�% �X�@@@��@����&string��. ����/ ���@@��1 ����2 ���@@@����+command_doc��9 ����: ���@@��< ����= ���@@@��? ����@ ���@@@��B �X]�C ���@@@��E �-2�F ���@@@��H ��I ���@@@��K ����L ���@@@��N ����O ���@@@��Q ����R ���@@@��T �Z_�U ���@@@��W ����X ���@@@��Z ����[ ���@@@��] ����^ ���@@@��` ����a ���@@@��c �rw�d ���@@@��f �^c�g ���@@@��i �MR�j ���@@@��l �;@�m ���@@@@�����@@ ��@@ �A�������
   [mk_command_doc ~title ~section ~version ~short_description ~synopsis ~description ~see_also
    command_exe] records information about a command that is used to create its man page. A lot of
    the concepts are taken from man-pages(7).

    - [command_exe] is the name of the command, preferably an executable that selects the command
    - [title] will be the title of the manual
    - [section] will be the section of the manual (the number 7 in man-pages(7))
    - [version] is the version string of the command
    - [date] is the date of the last modification of the manual
    - [short_description] is a one-line description of the command
    - [options] can be either [`Replace blocks], which populates the OPTIONS section with [blocks],
      or [`Prepend blocks], in which case the options from the command are used, prepended by
      [blocks]. If unspecified it defaults to [`Prepend \[\]].
    - All the other [section_name] options correspond to the contents of the section [section_name].
      Some are mandatory and some are not. @��} ����~ �!�!�@@@@��� ����� �!�!�@@��� ����� �!�!�@@��� �&&�� ���@��� �&&�� ���@���Р-mk_subcommand��� �!�!��� �!�!�@��@�����,InferCommand!t��� �!�!��� �!�!�@@��� �!�!��� �!�!�@@@���.on_unknown_arg������#Add��� �!�!��� �!�"@A@��� �!�!��� �!�"@@����$Skip��� �!�"�� �!�"@A@��� �!�"�� �!�"@@����&Reject��� �!�"�� �!�"@A@��� �!�"�� �!�"@@@@@��� �!�!��� �!�"@@@���$name����&string��� �""!�� �""'@@��� �""!�� �""'@@@���/deprecated_long����&string��� �"(">�� �"("D@@��� �"(">�� �"("D@@@���*parse_mode����*parse_mode��� �"E"V�� �"E"`@@��� �"E"V�� �"E"`@@@���'in_help����$list�� �"a"�� �"a"�@���������,InferCommand!t�� �"a"p� �"a"~@@�� �"a"p� �"a"~@@@�����&string�� �"a"�� �"a"�@@��! �"a"��" �"a"�@@@@��$ �"a"p�% �"a"�@@@@��' �"a"o�( �"a"�@@@��@����&option��1 �"�"��2 �"�"�@�����+command_doc��: �"�"��; �"�"�@@��= �"�"��> �"�"�@@@@��@ �"�"��A �"�"�@@@����$unit��H �"�"��I �"�"�@@��K �"�"��L �"�"�@@@��N �"�"��O �"�"�@@@��Q �"a"f�R �"�"�@@@��T �"E"J�U �"�"�@@@��W �"("-�X �"�"�@@@��Z �""�[ �"�"�@@@��] �!�!��^ �"�"�@@@��` �!�!��a �"�"�@@@@�����@@ ��@@ �A�������
  � [mk_subcommand command ~long command_doc] defines the subcommand [command]. A subcommand is
    activated by passing [name], and by passing [--deprecated_long] if specified. A man page is
    automatically generated for [command] based on the information in [command_doc], if available
    (otherwise the command is considered internal). [on_unknown_arg] is the action taken on unknown
    anonymous arguments; it is `Reject by default. @��q �"�"��r �$6$k@@@@��t �"�"��u �$6$k@@��w �"�"��x �$6$k@@��z �!�!��{ �"�"�@��} �!�!��~ �"�"�@���Р,args_env_var��� �$m$q�� �$m$}@����&string��� �$m$��� �$m$�@@��� �$m$��� �$m$�@@@@���7��2@@ ��3@@ �A�������	K environment variable use to pass arguments from parent to child processes =@��� �$�$��� �$�$�@@@@��� �$�$��� �$�$�@@��� �$�$��� �$�$�@@��� �$m$m�� �$m$�@��� �$m$m�� �$m$�@���Р3strict_mode_env_var��� �$�$��� �$�$�@����&string��� �$�$��� �$�$�@@��� �$�$��� �$�$�@@@@@��� �$�$��� �$�$�@��� �$�$��� �$�$�@���Р+env_var_sep��� �$�$��� �$�%
@����$char��� �$�%�� �$�%@@��� �$�%�� �$�%@@@@������}@@ ��~@@ �A�������	D separator of argv elements when encoded into environment variables �@��� �%%�� �%%[@@@@��� �%%�� �%%[@@��� �%%�� �%%[@@��� �$�$��� �$�%@��� �$�$��� �$�%@���Р/extend_env_args�� �%]%a� �%]%p@��@����$list�� �%]%z� �%]%~@�����&string�� �%]%s� �%]%y@@�� �%]%s� �%]%y@@@@�� �%]%s� �%]%~@@@����$unit��# �%]%��$ �%]%�@@��& �%]%��' �%]%�@@@��) �%]%s�* �%]%�@@@@���ϰ��@@ ���@@ �A�������	J [extend_env_args args] appends [args] to those passed via [args_env_var] �@��: �%�%��; �%�%�@@@@��= �%�%��> �%�%�@@��@ �%�%��A �%�%�@@��C �%]%]�D �%]%�@��F �%]%]�G �%]%�@���Р%parse��O �%�%��P �%�%�@���+config_file����&string��[ �%�%��\ �%�%�@@��^ �%�%��_ �%�%�@@@���%usage�����#Arg)usage_msg��l �%�&�m �%�&@@��o �%�&�p �%�&@@@��@����*parse_mode��y �&&�z �&&%@@��| �&&�} �&&%@@@��@����&option��� �&&&:�� �&&&@@������,InferCommand!t��� �&&&+�� �&&&9@@��� �&&&+�� �&&&9@@@@��� �&&&+�� �&&&@@@@�������&option��� �&A&U�� �&A&[@������,InferCommand!t��� �&A&F�� �&A&T@@��� �&A&F�� �&A&T@@@@��� �&A&F�� �&A&[@@@���@����#int��� �&A&_�� �&A&b@@��� �&A&_�� �&A&b@@@��!a��� �&A&f�� �&A&h@@@��� �&A&_�� �&A&h@@@@��� �&A&F�� �&A&i@@@��� �&&&+�� �&A&i@@@��� �&&�� �&A&i@@@��� �%�&�� �&A&i@@@��� �%�%��� �&A&i@@@@�����z@@ ��{@@ �A�������
  � [parse ~usage parse_mode command] parses command line arguments as specified by preceding calls
    to the [mk_*] functions, and returns:

    - the command selected by the user on the command line, except if [command] is not None in which
      case it is considered "pre-selected" for the user;
    - a function that prints the usage message and help text then exits with the code passed as
      argument.

    The decoded values of the inferconfig file [config_file], if provided, are parsed, followed by
    the decoded values of the environment variable [args_env_var], followed by [Sys.argv] if
    [parse_mode] is one that should parse command line arguments (this is defined in the
    implementation of this module). Therefore arguments passed on the command line supersede those
    specified in the environment variable, which themselves supersede those passed via the config
    file.

    WARNING: An argument will be interpreted as many times as it appears in all of the config file,
    the environment variable, and the command line. The [args_env_var] is set to the set of options
    parsed in [args_env_var] and on the command line. �@��� �&j&j�� �*�*�@@@@��� �&j&j�� �*�*�@@��� �&j&j�� �*�*�@@��� �%�%��� �&A&i@��� �%�%��� �&A&i@���Р.is_env_var_set��� �*�*��  �*�+@��@����&string��	 �*�+�
 �*�+@@�� �*�+� �*�+@@@����$bool�� �*�+� �*�+@@�� �*�+� �*�+@@@�� �*�+� �*�+@@@@�������@@ ���@@ �A�������	* [is_env_var_set var] is true if $[var]=1 �@��+ �++�, �++F@@@@��. �++�/ �++F@@��1 �++�2 �++F@@��4 �*�*��5 �*�+@��7 �*�*��8 �*�+@���Р+show_manual��@ �+H+L�A �+H+W@���.scrub_defaults����$bool��L �+Z+o�M �+Z+s@@��O �+Z+o�P �+Z+s@@@���0internal_section����&string��[ �+t+��\ �+t+�@@��^ �+t+��_ �+t+�@@@��@������(Cmdliner'Manpage&format��l �+�+��m �+�+�@@��o �+�+��p �+�+�@@@��@����+command_doc��y �+�+��z �+�+�@@��| �+�+��} �+�+�@@@��@����&option��� �+�+��� �+�+�@������,InferCommand!t��� �+�+��� �+�+�@@��� �+�+��� �+�+�@@@@��� �+�+��� �+�+�@@@����$unit��� �+�+��� �+�+�@@��� �+�+��� �+�+�@@@��� �+�+��� �+�+�@@@��� �+�+��� �+�+�@@@��� �+�+��� �+�+�@@@��� �+t+y�� �+�+�@@@��� �+Z+_�� �+�+�@@@@���W��R@@ ��S@@ �A�������
  B Display the manual of [command] to the user, or [command_doc] if [command] is None. [format] is
    used as for [Cmdliner.Manpage.print]. If [internal_section] is specified, add a section titled
    [internal_section] about internal (hidden) options. If [scrub_defaults] then do not print
    default values for options. ]@��� +�+���-
-,@@@@��� +�+���-
-,@@��� +�+���-
-,@@��� �+H+H�� �+�+�@��� �+H+H�� �+�+�@���Р.keep_args_file���-.-2��-.-@@����#ref���-.-H��-.-K@�����$bool���-.-C��-.-G@@���-.-C��-.-G@@@@���-.-C��-.-K@@@@@���-.-.��-.-K@���-.-.��-.-K@@