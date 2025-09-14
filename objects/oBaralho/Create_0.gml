#region lista

global.baralho = ds_list_create();

num_cartas = 10;

var _carta = 1;
repeat(num_cartas){
	global.baralho[| _carta - 1] = _carta;
	_carta += 1;
}

#endregion


carta_selecionada = -1;