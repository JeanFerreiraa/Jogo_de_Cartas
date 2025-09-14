var _carta = 0;

repeat(num_cartas){
	var	_stg = global.baralho[| _carta];
	draw_text(20, 20 + (_carta *20), _stg);
	
	_carta +=1;
}