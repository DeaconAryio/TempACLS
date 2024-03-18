GDPC                �                                                                         T   res://.godot/exported/133200997/export-37f3470da3d2dd44dcc9ea6ebd4683ce-base_med.scn�            Fq��T�$��o�}��J    P   res://.godot/exported/133200997/export-41865932ab4fe419887720930148ceaa-acls.scn�      �      �v�<6�p���_���    T   res://.godot/exported/133200997/export-80dc03e03f6d26c1f261e76c7872c948-test_med.scn�C             �\P?
�A���NB�C    ,   res://.godot/global_script_class_cache.cfg   H      �       ތ�5u-K���M��    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�1      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  PL      �       �\�Ud��{�[m��       res://Globals.gd�      ;       �x�wָ.��d_��       res://Heart.gd  �            ��k\wSu��;b���	       res://Systemic.gd   �?      �      ��A@���n�u R       res://TestMed.gd�A             ���.�S3z�L|KN       res://acls.gd           �      f�������#igv@�       res://acls.tscn.remap   �F      a       �_>.�Q�&���*!p�       res://base_med.gd   �      �      V�r~ˣ̊��`����       res://base_med.tscn.remap    G      e       �<2�$���0����P       res://icon.svg  �H      �      C��=U���^Qu��U3       res://icon.svg.import   �>      �       �2��k�4UL�۫���       res://project.binary0M      �      ���W�*�ƌb����:�       res://test_med.tscn.remap   �G      e       c� ��b^�Y-�ϣ�p    \��\extends Control


func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed('ui_cancel'):
		get_tree().reload_current_scene()


func _on_button_pressed():
	var new :BaseMedicine = load('res://base_med.tscn').instantiate()
	new.med_label_holder = $ActiveMeds
	new.heart = $Body/Heart
	$Body/Medication.add_child(new)
	new.med = Globals.Med.Epinephrine

func _on_amio_pressed():
	var new :BaseMedicine = load('res://base_med.tscn').instantiate()
	new.med_label_holder = $ActiveMeds
	new.heart = $Body/Heart
	$Body/Medication.add_child(new)
	new.med = Globals.Med.Amiodrone


func _on_cpr_pressed():
	$Body/Heart._on_cpr_pressed()

func _on_place_pads_pressed():
	$Body/Heart/EKGDisplay.show()
	$Body/Heart/HBoxContainer/PumpBG.show()
	$Body/Heart/HBoxContainer/HeartRateDisplay.show()

func _on_check_pulse_pressed():
	$Body/Heart.check_pulse()

�x<RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://acls.gd ��������   Script    res://Heart.gd ��������   Script    res://Systemic.gd ��������      local://PackedScene_8pv8u T         PackedScene          	         names "   K      ACLS    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    script    Control    BloodPressureDisplay    offset_right    offset_bottom    Label    Body    Node    Heart    HeartRateTimer 
   wait_time 
   autostart    Timer    HBoxContainer    HeartRateDisplay    visible    PumpBG    custom_minimum_size    size_flags_vertical 
   ColorRect    Pump    offset_left    color    Arrest    text    Button    CPR    Rhythm    Shock 	   EKGTimer    EKGDisplay 	   position    Node2D    Line2D    points    width 	   CPRTimer 	   one_shot    PulseCheckTimer    Lungs 	   Systemic    offset_top    BPLabel 
   BPChanger    Medication    ActiveMeds    VBoxContainer    ToolBox    Epi    Amio    CheckPulse 
   PlacePads    Textbox    _on_heart_rate_timer_timeout    timeout    _on_arrest_pressed    pressed    _on_cpr_pressed    _on_rhythm_pressed    _on_shock_pressed    _on_ekg_timer_timeout    _on_cpr_timer_timeout    _on_pulse_check_timer_timeout    _on_bp_changer_pressed    _on_button_pressed    _on_amio_pressed    _on_check_pulse_pressed    _on_place_pads_pressed    	   variants    6                    �?                             B     �A    �D     �B         )   �������?           gC     �B       
     �B  HB      
         HB     ��     HB   ��f?���<      �?      PULSE       NO CPR       NSR       SHOCK 
     �B  �C%   2              A      �A      �A       B       B      @B      @B      `B      �B      �B      �B      �B      �B      �B      �B      �B       C      C      C      C       C      (C      0C      8C      @C      HC      PC      XC      `C      hC      pC      xC      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C      �C         �@      @              �B     �B     
C      C      120       BP      �D     �D      Medications      HD     @B    @[D     C      TOOLBOX       Epi       Amio       CPR       Check Pulse       Place Pads      HC     D     pC    �D      node_count    "         nodes     �  ��������       ����                                                             	   ����         
                              ����                     ����                
         	      
                    ����                                ����         
                             ����                                ����                                            ����                     
                                          ����                              !   ����                              "   ����                              #   ����                             $   ����               '   %   ����         &                 (   (   ����   )      *                    +   ����         ,                    -   ����         ,                    .   ����                              /   ����                                       ����               0       
   !      "                 1   ����            #                  2   ����            $                 3   ����                5   4   ����            %   0      
   &      "                    ����            '               5   6   ����            (   0   )   
   *      +                    ����            ,                  7   ����            -                  8   ����            .                  !   ����            /                  9   ����            0                  :   ����            1                  ;   ����            2   0   3   
   4      5             conn_count             conns     b         =   <              	      ?   >              
      ?   @                    ?   A                    ?   B                    =   C                    =   D                    =   E                    ?   F                     ?   G                     ?   H                     ?   @                     ?   I                      ?   J                    node_paths              editable_instances              version             RSRC�M�{xgЅ!_àextends Node

class_name BaseMedicine

var med : set = set_med
var med_label_holder
var active_med_label
var affect = 50
var change = 5
var tics = 10
var heart

var med_dic :Dictionary = {
	'None' : {
		'name' : 'None',
		'affect' : 0,
		'change' : 0,
		'tics' : 0
	},
	'Amiodrone' : {
		'name' : 'Amiodrone',
		'affect' : -50,
		'change' : -5,
		'tics' : 10
	},
	'Epinephrine' : {
		'name' : 'Epinephrine',
		'affect' : 50,
		'change' : 5,
		'tics' : 10
	}
}

func _ready():
	pass

func set_med(val : Globals.Med):
	med = val
	for prop in med_dic[Globals.Med.keys()[med]]:
		set(prop, med_dic[Globals.Med.keys()[med]][prop])
	print(Globals.Med.keys()[med])
	if is_instance_valid(active_med_label):
		active_med_label.text = med_dic[Globals.Med.keys()[med]].name
	else:
		var new = Label.new()
		new.text = med_dic[Globals.Med.keys()[med]].name
		med_label_holder.add_child(new)
		active_med_label = new
	heart.hr_target_mod = heart.hr_target_mod + affect
	$Timer.start()

func _process(_delta):
	pass

func _on_timer_timeout():
	affect -= change
	tics -= 1
	get_node('/root/ACLS/Body/Heart').hr_target_mod -= change
	if tics > 0:
		$Timer.start()
	else:
		get_node('/root/ACLS/Body/Heart').hr_target_mod -= affect
		active_med_label.queue_free()
		queue_free()
�pRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://base_med.gd ��������      local://PackedScene_ydulm 	         PackedScene          	         names "         BaseMed    script    Node    Timer 
   wait_time 	   one_shot    _on_timer_timeout    timeout    	   variants                      �@            node_count             nodes        ��������       ����                            ����                         conn_count             conns                                      node_paths              editable_instances              version             RSRC��:�extends Node

enum Med {
	None,
	Epinephrine,
	Amiodrone
}
�Љextends Control

@onready var hr_display = $HBoxContainer/HeartRateDisplay
@onready var heart_rate_timer = $HeartRateTimer
var hr_target_mod = 0
var heart_rate_target :float = 75
@export var hr :float = 75 : set = set_hr 

var has_pulse = true : set = set_has_pulse
var heart_restart = false
var cpr_restarted = false
var cpr = false
var jump_hr = false
var rhythm = 'NSR' : set = set_rhythm

var ekg_index = 0

signal hr_changed

var nsr = [0, 20, 0, 0, -20, 0, 80, 80, 20, 0, 0 , 20, 0, 0,0, 0, 0,0, 0, 0,]
var flatline = [0,0,0]
var vtach = [0, 20, 40, 20, -20, -80, -30, 0, 90, 40, 0]
var strip = nsr
var r_index = 0

var epi_count = 0
var amio_count = 0
var cpr_count = 0
func _ready():
#	hr = 200
	$HBoxContainer/PumpBG/Pump.color = Color.RED

func _process(_delta):
	pass

func set_has_pulse(val):
	has_pulse = val
	if has_pulse:
		$HBoxContainer/Arrest.text = 'NO PULSE'
		
	elif has_pulse == false:
		$HBoxContainer/Arrest.text = 'PULSE'

func set_rhythm(val):
	rhythm = val
	if has_pulse:
		if rhythm == 'NSR':
			heart_rate_target = 75
		elif rhythm == "VTACH":
			heart_rate_target = 180
		jump_hr = true
	$HBoxContainer/Rhythm.text = rhythm

func set_hr(val):
	hr = val
	if jump_hr == true:
		jump_hr = false
		if rhythm == 'NSR':
			hr = 75 + randi()%5 - 2
			strip = nsr
		elif rhythm == 'VTACH':
			hr = 180 + randi()%5 - 2
			strip = vtach
	if is_instance_valid(heart_rate_timer):
		r_index = 0
		if hr == 0:
			strip = flatline
			$EKGTimer.wait_time = 0.05
			$EKGTimer.start()
		else:
			heart_rate_timer.start(60.0/hr)
			if cpr == false:
				var tween = get_tree().create_tween()
				tween.tween_property($HBoxContainer/PumpBG/Pump, "size",Vector2(100, 50 ), 60.0/hr)
				tween.tween_callback(done)
			$EKGTimer.wait_time = 60.0/hr/strip.size()
			$EKGTimer.start()
			
		hr_display.text = String.num(int(hr))
	
func start_cpr():
	$HBoxContainer/PumpBG/Pump.color = Color.BLUE
	var tween = get_tree().create_tween()
	tween.tween_property($HBoxContainer/PumpBG/Pump, "size",Vector2(100, 50 ), 60.0/100.0)
	tween.tween_callback(cpr_done)
	
func cpr_done():
	$HBoxContainer/PumpBG/Pump.size.x = 0
	if cpr:
		start_cpr()
	
func _on_heart_rate_timer_timeout():
	if heart_restart == true:
		$HBoxContainer/PumpBG/Pump.color = Color.RED
		if rhythm == 'NSR':
			hr = 75 + randi()%5 - 2
			heart_rate_target = hr
			strip = nsr
		elif rhythm == 'VTACH':
			hr = 180 + randi()%5 - 2
			heart_rate_target = hr
			strip = vtach
		heart_restart = false
		
	elif cpr_restarted == true:
		cpr_restarted = false
		start_cpr()
		
	elif has_pulse == true:
		if cpr == false:
			$HBoxContainer/PumpBG/Pump.color = Color.RED
		if $"../Systemic".bp == 'LOW' and hr < 90:
			hr = move_toward(hr, 90 + (randi()%5 - 2), randi()%5)
		else:
			hr = move_toward(hr, heart_rate_target + hr_target_mod + (randi()%5 - 2), randi()%5)
	else:
		hr = 0

func done():
#	print(Time.get_ticks_msec())
	$HBoxContainer/PumpBG/Pump.size.x = 0
	if rhythm == 'NSR' and has_pulse:
		$"../Systemic".cards_systemic('NORMAL')
	elif cpr and has_pulse == false:
		$"../Systemic".cards_systemic('NORMAL')
	else:
		$"../Systemic".cards_systemic('LOW')

func _on_arrest_pressed():
	if has_pulse:
		r_index = 0
		has_pulse = false
		heart_restart = false
		$"../Systemic".cards_systemic('LOW')
		
	elif has_pulse == false:
		has_pulse = true
		heart_restart = true

func _on_cpr_pressed():
	if cpr == true:
		cpr = false
		$HBoxContainer/CPR.text = 'NO CPR'
	elif cpr == false:
		cpr = true
		$HBoxContainer/CPR.text = 'CPR'
		cpr_restarted = true
		$CPRTimer.start()

func _on_rhythm_pressed():
	if rhythm == 'NSR':
		rhythm = 'VTACH'
		$HBoxContainer/Rhythm.text = rhythm
	else:
		rhythm = 'NSR'
		$HBoxContainer/Rhythm.text = rhythm

func _on_shock_pressed():
	print('SHOCK')
	if rhythm != 'NSR' or has_pulse == false:
		if randi()%1 == 0:
			rhythm = 'NSR'
			if has_pulse == false:
				has_pulse = true
				heart_restart = true

func _on_ekg_timer_timeout():
	var pos = $EKGDisplay/Line2D.get_point_position(ekg_index)
	$EKGDisplay/Line2D.set_point_position(ekg_index, pos + Vector2(0, strip[r_index] * -1 + (randi()%5 -2)))
	
	for spot in range(8):
		var use_point = spot + ekg_index + 1
		if use_point >= $EKGDisplay/Line2D.get_point_count():
			use_point -= $EKGDisplay/Line2D.get_point_count()
		var clear_pos = $EKGDisplay/Line2D.get_point_position(use_point)
		$EKGDisplay/Line2D.set_point_position(use_point, Vector2(clear_pos.x, 0))
	
	r_index += 1
	ekg_index += 1
	
	if ekg_index >= $EKGDisplay/Line2D.get_point_count():
		ekg_index = 0
	if r_index >= strip.size():
		r_index = 0

func _on_cpr_timer_timeout():
	cpr = false
	$HBoxContainer/CPR.text = 'NO CPR'

func check_pulse():
	$HBoxContainer/HeartRateDisplay.show()
	$HBoxContainer/PumpBG.show()
	$PulseCheckTimer.start()

func _on_pulse_check_timer_timeout():
	$HBoxContainer/HeartRateDisplay.hide()
	$HBoxContainer/PumpBG.hide()
K��<�r1�GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ Ww1�ۋ1bƉH[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cfgy8f3riv08a"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 ���N�1#W1N��extends Control

var bp = 'NORMAL' : set = set_bp
var ca = 0
var k
var mg
var svr = 'NORMAL'

func _ready():
	$HBoxContainer/BPLabel.text = bp

func _process(_delta):
	pass

func cards_systemic(val):
	if val == 'NORMAL':
		pass
	elif val == 'LOW':
		pass
	elif val == 'HIGH':
		pass
	bp = val

func set_bp(val):
	bp = val
	$HBoxContainer/BPLabel.text = bp
	
func _on_bp_changer_pressed():
	if bp == 'NORMAL':
		bp = 'HIGH'
	elif bp == 'HIGH':
		bp = 'LOW'
	elif bp == 'LOW':
		bp = 'NORMAL'

]� .extends Node

var med_name = 'EPI'
var active_med_label
var affect = 50
var change = 5
var tic = 10

func _ready():
	get_node('/root/ACLS/Body/Heart').hr_target_mod = get_node('/root/ACLS/Body/Heart').hr_target_mod + affect

func _process(_delta):
	pass

func _on_timer_timeout():
	affect -= change
	tic -= 1
	get_node('/root/ACLS/Body/Heart').hr_target_mod -= change
	if tic > 0:
		$Timer.start()
	else:
		get_node('/root/ACLS/Body/Heart').hr_target_mod -= affect
		active_med_label.queue_free()
		queue_free()
RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://TestMed.gd ��������      local://PackedScene_ajwc0          PackedScene          	         names "   	      TestMed    script    Node    Timer 
   wait_time 	   one_shot 
   autostart    _on_timer_timeout    timeout    	   variants                      �@            node_count             nodes        ��������       ����                            ����                               conn_count             conns                                      node_paths              editable_instances              version             RSRC[remap]

path="res://.godot/exported/133200997/export-41865932ab4fe419887720930148ceaa-acls.scn"
��&�I�"nٙ�u�K[remap]

path="res://.godot/exported/133200997/export-37f3470da3d2dd44dcc9ea6ebd4683ce-base_med.scn"
� �Sך���[remap]

path="res://.godot/exported/133200997/export-80dc03e03f6d26c1f261e76c7872c948-test_med.scn"
�a�S
E�V	list=Array[Dictionary]([{
"base": &"Node",
"class": &"BaseMedicine",
"icon": "",
"language": &"GDScript",
"path": "res://base_med.gd"
}])
�p��K<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
��\N�|�;�   �sơ�_|   res://acls.tscnD�vψc�}   res://base_med.tscn��CI�LG   res://icon.svgU�ɏ�Q   res://test_med.tscn�R"��O   res://HTML/index.png�uf�#`?X   res://HTML/index.png3���+   res://HTML/index.png�;`0G{�YAECFG      application/config/name         ACLS   application/run/main_scene         res://acls.tscn    application/config/features   "         4.1    Mobile     application/config/icon         res://icon.svg     autoload/Globals         *res://Globals.gd      editor_plugins/enabled   "       #   rendering/renderer/rendering_method         gl_compatibility