if mouse_check_button_pressed(mb_right){
	carta_selecionada.selecionada = false;
	carta_selecionada = -1;

}

if position_meeting(mouse_x, mouse_y, self){
	if mouse_check_button_pressed(mb_left){
		if ds_list_size(global.baralho > 0){
			var _carta = global.baralho [| 0];
			var _insta = instance_create_layer(mouse_x, mouse_y, "Instances", oCarta);
			_insta.image_index = _carta - 1;
			carta_selecionada = _insta;
			
			ds_list_delete(global.baralho, 0);
			
		}
		
	}
}
