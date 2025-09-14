var _carta = 0;

repeat(num_cartas){
	var	_stg = global.baralho[| _carta];
	
	draw_text(35, 35 + (_carta *20), _stg);
	
	_carta +=1;
}