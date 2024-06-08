Caml1999N028����            5src/absint/Source.mli����  `  �  #  w�����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@��������$IStd��5src/absint/Source.mliH � ��H � �@@��H � ��H � �@@��H � ��H � �@���Р5all_formals_untainted��J � ��J � �@��@�����(Procdesc!t��J � ��J � �@@��J � �� J � �@@@����$list��'J ��(J �@���������'Mangled!t��5J � ��6J � �@@��8J � ��9J � �@@@������#Typ!t��CJ � �DJ �@@��FJ � �GJ �@@@�����&option��OJ ��PJ �@���!a��VJ ��WJ �
@@@@��YJ ��ZJ �@@@@��\J � ��]J �@@@@��_J � ��`J �@@@��bJ � ��cJ �@@@@���)ocaml.doc���@@ ���@@ �A�������	> specify that all the formals of the procdesc are not tainted @��tK�uK[@@@@��wK�xK[@@��zK�{K[@@��}J � ��~J �@���J � ���J �@�����$Kind���M]i��M]m@������������.TaintTraceElem$Kind���Nt~��Nt�@���Nt~��Nt�@@���Ntv��Nt�@@���Ntv��Nt�@���Р#get���P����P��@���,caller_pname�����(Procname!t���Q����Q��@@���Q����Q��@@@��@�����(Procname!t���Q����Q��@@���Q����Q��@@@��@����$list���Q����Q��@������&HilExp!t���Q����Q��@@���Q����Q��@@@@���Q����Q��@@@��@�����$Tenv!t���Q����Q��@@���Q����Q��@@@����$list���Q����Q��@��������!t��
Q���Q��@@��Q���Q��@@@�����&option��Q���Q��@�����#int��Q��� Q��@@��"Q���#Q��@@@@��%Q���&Q��@@@@��(Q���)Q��@@@@��+Q���,Q��@@@��.Q���/Q��@@@��1Q���2Q��@@@��4Q���5Q��@@@��7Q���8Q��@@@@���հ��@@ ���@@ �A�������	^ return Some (kind) if the procedure with the given actuals is a taint source, None otherwise �@��HR���IR�b@@@@��KR���LR�b@@��NR���OR�b@@��QP���RQ��@��TP���UQ��@���Р3get_tainted_formals��]Tdj�^Td}@��@�����(Procdesc!t��iTd��jTd�@@��lTd��mTd�@@@��@�����$Tenv!t��xTd��yTd�@@��{Td��|Td�@@@����$list���Td���Td�@���������'Mangled!t���Td���Td�@@���Td���Td�@@@������#Typ!t���Td���Td�@@���Td���Td�@@@�����&option���Td���Td�@�����!t���Td���Td�@@���Td���Td�@@@@���Td���Td�@@@@���Td���Td�@@@@���Td���Td�@@@���Td���Td�@@@���Td���Td�@@@@���d��]@@ ��^@@ �A�������	� return each formal of the function paired with either Some(kind) if the formal is a taint
      source, or None if the formal is not a taint source h@���U����VX@@@@���U����VX@@���U����VX@@���Tdf��Td�@���Tdf��Td�@@���M]p��WY\@@@���M]]��WY\@���M]]��WY\@�����!S���Y^j��Y^k@������������.TaintTraceElem!S��Zr|�Zr�@��	Zr|�
Zr�@@��Zrt�Zr�@@��Zrt�Zr�@���A�    �$spec��\���\��@@@��Р&source��!]���"]��@@����!t��)]���*]��@@��,]���-]��@@@��/]���0^��@���Ͱ��@@ ���@@ �A�������= type of the returned source �@��@]���A]��@@@@��C]���D]��@@��F]���G]��@@�Р%index��M^���N^��@@����&option��U^���V^��@�����#int��^^���_^��@@��a^���b^��@@@@��d^���e^��@@@��g^���h^��@������@@ ���@@ �A�������	< index of the returned source if Some; return value if None 	@��x^���y^�*@@@@��{^���|^�*@@��~^���^�*@@@A@@���\����^�,@@���\����^�,@���Р#get���`.4��`.7@���,caller_pname�����(Procname!t���`.G��`.Q@@���`.G��`.Q@@@��@�����(CallSite!t���`.U��`._@@���`.U��`._@@@��@����$list���`.l��`.p@������&HilExp!t���`.c��`.k@@���`.c��`.k@@@@���`.c��`.p@@@��@�����$Tenv!t���`.t��`.z@@���`.t��`.z@@@����$list���`.���`.�@�����$spec���`.~��`.�@@���`.~��`.�@@@@���`.~��`.�@@@���`.t��`.�@@@���`.c��`.�@@@���`.U��`.�@@@���`.:��`.�@@@@�������@@ ���@@ �A�������	j return Some (taint spec) if the call site with the given actuals is a taint source, None
      otherwise �@��a���b��@@@@��a���b��@@��a���b��@@��`.0�`.�@��`.0�`.�@���Р3get_tainted_formals�� d��!d�@��@�����(Procdesc!t��,d��-d�!@@��/d��0d�!@@@��@�����$Tenv!t��;d�%�<d�+@@��>d�%�?d�+@@@����$list��Fd�N�Gd�R@���������'Mangled!t��Td�0�Ud�9@@��Wd�0�Xd�9@@@������#Typ!t��bd�<�cd�A@@��ed�<�fd�A@@@�����&option��nd�F�od�L@�����!t��wd�D�xd�E@@��zd�D�{d�E@@@@��}d�D�~d�L@@@@���d�0��d�L@@@@���d�/��d�R@@@���d�%��d�R@@@���d���d�R@@@@���'�� @@ ��!@@ �A�������	� return each formal of the function paired with either Some(source) if the formal is a taint
      source, or None if the formal is not a taint source +@���eSU��f��@@@@���eSU��f��@@���eSU��f��@@���d����d�R@���d����d�R@@���Y^n��g��@@@���Y^^��g��@���Y^^��g��@������$Make���i����i�@�����$Kind���i���i�@����$Kind���i���i�@���i���i�@@������!S���i���i�@���i���i�@@����$Kind���i�!��i�%@��$Kind���i�(��i�,@@���i���i�,@@���i���i�,@@@���i����i�,@���i����i�,@������%Dummy���k.5��k.:@������!S��k.=�	k.>@��k.=�k.>@@����!t��k.I�k.J@    ���k.I�k.J@@@@A�����$unit��!k.M�"k.Q@@��$k.M�%k.Q@@@@��'k.D�(k.Q@@��*k.=�+k.Q@@@��-k..�.k.Q@��0k..�1k.Q@@