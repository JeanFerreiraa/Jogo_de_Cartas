if mouse_check_button_pressed(mb_right){
	
	carta_selecionada.Esta_selecionada = false;
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
//embaralhar
if keyboard_check_pressed(ord("R")){
	ds_list_shuffle(global.baralho);
}

//retonar carta ao baralho
var _insta_carta = instance_place(mouse_x, mouse_y, oCarta);
if _insta_carta{
	if keyboard_check_pressed(ord("T")){
	var _altura =  ds_list_size(global.baralho);
	global.baralho[| _altura ] = _insta_carta.image_index +1;
	instance_destroy(_insta_carta);
	}
}
//ordenar as cartas crescente
if keyboard_check_pressed(ord("C")){
	ds_list_sort(global.baralho, true);
}

//ordenar as cartas decrescente
if keyboard_check_pressed(ord("D")){
	ds_list_sort(global.baralho, false);
}
