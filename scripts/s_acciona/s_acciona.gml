// Función dedicada a accionar palancas e interruptores

// Le pasamos la posición de la palanca del objeto player


function s_acciona(pos){ 

// Guardamos la posición

var b = pos;



// Creamos dos arrays 

var a_palancas = [];
var a_puertas = [];

 


// Creamos dos variables de iteración

var i = 0;
var z = 0;


// Llenamos ambos arrays con los ids de las instancias

with(obj_palanca) {
	
	a_palancas[z] = id;
	
	
	
	z +=1;
	
}

with(obj_puerta) {
	
	a_puertas[i] = id;
	
	if (b == a_palancas[i]) {
	
		//Activamos la propiedad on de la puerta actual
		
		a_puertas[i].on = true; 
		global.puerta_actual = a_puertas[i];
		global.palanca_actual = a_palancas[i];
		a_palancas[i].up = true;
		
		
	
	}
	
	i += 1;
	
	
	
	
}

	












}