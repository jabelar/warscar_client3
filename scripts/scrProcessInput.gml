scrClearInput()

if gamepad_button_check(1, gp_padd) then key_down = true 
if gamepad_button_check(1, gp_padu) then key_up = true 
if gamepad_button_check(1, gp_padr) then key_right = true 
if gamepad_button_check(1, gp_padl) then key_left = true 
key_weapon = gamepad_button_check_pressed(1, gp_shoulderr) or gamepad_button_check(1, gp_shoulderrb)
