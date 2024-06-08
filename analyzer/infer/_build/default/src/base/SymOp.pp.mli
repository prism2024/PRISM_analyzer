Caml1999N028����            2src/base/SymOp.mli����  %�  .  �  Ǡ����1ocaml.ppx.context��&_none_@@ �A����������)tool_name���-ppxlib_driver@@@����,include_dirs����"[]@@@����)load_path!����
%@%@@����,open_modules*����.@.@@����+for_package3����$None8@8@@����%debug=����%falseB@B@@����+use_threadsG����
K@K@@����-use_vmthreadsP����T@T@@����/recursive_typesY����]@]@@����)principalb����%f@f@@����3transparent_modulesk����.o@o@@����-unboxed_typest����7x@x@@����-unsafe_string}����@�@�@@����'cookies�����o�@�@@@@�@@@�@�������*ocaml.text���@@ ���@@ �A�������	P Symbolic Operations and Failures: the units in which analysis work is measured �@��2src/base/SymOp.mliI � ��I �=@@@@��I � ��I �=@@��I � ��I �=@��
I � ��I �=@������$IStd��K?E�K?I@@��K??�K?I@@��K??�K?I@���A�    �!t��$Not�%Nou@@@@A@���)ocaml.doc���@@ ���@@ �A�������> Internal state of the module �@��6MKK�7MKn@@@@��9MKK�:MKn@@��<MKK�=MKn@@��?Noo�@Nou@@��BNoo�CNou@���Р5check_wallclock_alarm��KPw{�LPw�@��@����$unit��UPw��VPw�@@��XPw��YPw�@@@����$unit��`Pw��aPw�@@��cPw��dPw�@@@��fPw��gPw�@@@@���B��@@ ��@@ �A�������	? if the wallclock alarm has expired, raise a timeout exception @��wQ���xQ��@@@@��zQ���{Q��@@��}Q���~Q��@@���Pww��Pw�@���Pww��Pw�@���Р<get_remaining_wallclock_time���S����S�@��@����$unit���S�	��S�@@���S�	��S�@@@����%float���S���S�@@���S���S�@@@���S�	��S�@@@@������H@@ ��I@@ �A�������	> Return the time remaining before the wallclock alarm expires S@���T��TZ@@@@���T��TZ@@���T��TZ@@���S����S�@���S����S�@���Р3get_timeout_seconds���V\`��V\s@��@����$unit���V\v��V\z@@���V\v��V\z@@@����&option���V\���V\�@�����%float���V\~��V\�@@���V\~��V\�@@@@���V\~��V\�@@@���V\v��V\�@@@@���а��@@ ���@@ �A�������	& Timeout in seconds for each function �@��W���W��@@@@��W���	W��@@��W���W��@@��V\\�V\�@��V\\�V\�@���Р)get_total��Y���Y��@��@����$unit��$Y���%Y��@@��'Y���(Y��@@@����#int��/Y���0Y��@@��2Y���3Y��@@@��5Y���6Y��@@@@������@@ ���@@ �A�������	8 Return the total number of symop's since the beginning �@��FZ���GZ�@@@@��IZ���JZ�@@��LZ���MZ�@@��OY���PY��@��RY���SY��@���Р#pay��[\�\\@��@����$unit��e\�f\!@@��h\�i\!@@@����$unit��p\%�q\)@@��s\%�t\)@@@��v\�w\)@@@@���R��@@ ��@@ �A�������1 Count one symop "@���]**��]*@@@@@���]**��]*@@@���]**��]*@@@���\��\)@���\��\)@���Р+reset_total���_BF��_BQ@��@����$unit���_BT��_BX@@���_BT��_BX@@@����$unit���_B\��_B`@@���_B\��_B`@@@���_BT��_B`@@@@������X@@ ��Y@@ �A�������	# Reset the total number of symop's c@���`aa��`a�@@@@���`aa��`a�@@���`aa��`a�@@���_BB��_B`@���_BB��_B`@���Р-restore_state���b����b��@��@����!t���b����b��@@���b����b��@@@����$unit���b����b��@@���b����b��@@@���b����b��@@@@���԰��@@ ���@@ �A�������8 Restore the old state. �@��	c���
c��@@@@��c���c��@@��c���c��@@��b���b��@��b���b��@���Р*save_state��e���e��@���0keep_symop_total����$bool��*e���+e��@@��-e���.e��@@@����!t��5e���6e��@@��8e���9e��@@@��;e���<e��@@@@������@@ ���@@ �A�������	� Return the old state, and revert the current state to the initial one. If keep_symop_total is
    true, share the total counter. �@��Lf���MgV{@@@@��Of���PgV{@@��Rf���SgV{@@��Ue���Ve��@��Xe���Ye��@���Р)set_alarm��ai}��bi}�@��@����$unit��ki}��li}�@@��ni}��oi}�@@@����$unit��vi}��wi}�@@��yi}��zi}�@@@��|i}��}i}�@@@@���X��@@ ��@@ �A�������	* Reset the counter and activate the alarm (@���j����j��@@@@���j����j��@@���j����j��@@���i}}��i}�@���i}}��i}�@���Р3set_wallclock_alarm���l����l��@��@����%float���l����l��@@���l����l��@@@����$unit���l����l��@@���l����l��@@@���l����l��@@@@������^@@ ��_@@ �A�������	0 Set the wallclock alarm checked at every pay() i@���m����m�(@@@@���m����m�(@@���m����m�(@@���l����l��@���l����l��@���Р=set_wallclock_timeout_handler���o*.��o*K@��@��@����$unit���o*O��o*S@@���o*O��o*S@@@����$unit���o*W��o*[@@���o*W��o*[@@@�� o*O�o*[@@@����$unit��o*`�	o*d@@��o*`�o*d@@@��o*N�o*d@@@@������@@ ���@@ �A�������	+ set the handler for the wallclock timeout �@��pee� pe�@@@@��"pee�#pe�@@��%pee�&pe�@@��(o**�)o*d@��+o**�,o*d@���Р+unset_alarm��4r���5r��@��@����$unit��>r���?r��@@��Ar���Br��@@@����$unit��Ir���Jr��@@��Lr���Mr��@@@��Or���Pr��@@@@���+���@@ ���@@ �A�������7 De-activate the alarm �@��`s���as��@@@@��cs���ds��@@��fs���gs��@@��ir���jr��@��lr���mr��@���Р5unset_wallclock_alarm��uu���vu��@��@����$unit��u����u��@@���u����u��@@@����$unit���u����u��@@���u����u��@@@���u����u��@@@@���l��1@@ ��2@@ �A�������	2 Unset the wallclock alarm checked at every pay() <@���v����v�4@@@@���v����v�4@@���v����v�4@@���u����u��@���u����u��@���A�    �,failure_kind���x6;��x6G@@@��Р)FKtimeout���yJN��yJW@�@@���yJL��yJW@������d@@ ��e@@ �A�������3 max time exceeded o@���yJY��yJq@@@@���yJY��yJq@@���yJY��yJq@@�Р0FKsymops_timeout���zrv��zr�@������#int���zr���zr�@@���zr���zr�@@@@@���zrt��zr�@���Ͱ��@@ ���@@ �A�������6 max symop's exceeded �@��zr��zr�@@@@��zr��zr�@@��zr��	zr�@@�Р3FKrecursion_timeout��{���{��@������#int��{���{��@@��{���{��@@@@@��{��� {��@�������@@ ���@@ �A�������> max recursion level exceeded �@��0{���1{��@@@@��3{���4{��@@��6{���7{��@@�Р'FKcrash��=|���>|��@������&string��G|���H|�@@��J|���K|�@@@@@��M|���N|�@���)���@@ ���@@ �A�������	( uncaught exception or failed assertion �@��^|��_|�3@@@@��a|��b|�3@@��d|��e|�3@@@A@@��gx66�h|�@@��jx66�k|�@������4Analysis_failure_exe��tNX�uNl@�������,failure_kind��Np��N|@@���Np��N|@@@@@���NN��N|@���a��&@@ ��'@@ �A�������3 Timeout exception 1@���~55��~5M@@@@���~55��~5M@@���~55��~5M@@��:@@ ��;@@ �A@���NN��N|@���Р/exn_not_failure��� A~��� A~�@��@����#exn��� A~��� A~�@@��� A~��� A~�@@@����$bool��� A~��� A~�@@��� A~��� A~�@@@��� A~��� A~�@@@@������g@@ ��h@@ �A�������	5 check that the exception is not a timeout exception r@��� B���� B��@@@@��� B���� B��@@��� B���� B��@@��� A~~�� A~�@��� A~~�� A~�@���Р+try_finally��� D���� D��@���!f��@����$unit��� D���� D��@@��� D���� D��@@@��!a�� D��� D��@@@�� D��� D��@@@���'finally��@����$unit�� D�	� D�@@�� D�	� D�@@@����$unit�� D��  D�@@��" D��# D�@@@��% D�	�& D�@@@��!a��+ D��, D�@@@��. D� �/ D�@@@��1 D���2 D�@@@@������@@ ���@@ �A�������
  V [try_finally ~f ~finally] executes [f] and then [finally] even if [f] raises an exception.
    Assuming that [finally ()] terminates quickly [Analysis_failure_exe] exceptions are handled
    correctly. In particular, an exception raised by [f ()] is delayed until [finally ()] finishes,
    so [finally ()] should return reasonably quickly. �@��B E�C H	@	x@@@@��E E�F H	@	x@@��H E�I H	@	x@@��K D���L D�@��N D���O D�@���Р/pp_failure_kind��W J	z	~�X J	z	�@��@�����&Format)formatter��c J	z	��d J	z	�@@��f J	z	��g J	z	�@@@��@����,failure_kind��p J	z	��q J	z	�@@��s J	z	��t J	z	�@@@����$unit��{ J	z	��| J	z	�@@��~ J	z	�� J	z	�@@@��� J	z	��� J	z	�@@@��� J	z	��� J	z	�@@@@@��� J	z	z�� J	z	�@��� J	z	z�� J	z	�@@