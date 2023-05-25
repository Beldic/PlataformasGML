// EVENTOS DE MOVIMIENTO OBJ_PLAYER

// Detectar entrada del teclado
izq = keyboard_check_direct(vk_left);
dch = keyboard_check_direct(vk_right);
set = keyboard_check_pressed(vk_enter);
jmp = keyboard_check_pressed(vk_space);

if jmp {
	
	g -= 15;
	
}


if place_free(x,y+1) {

g++;
	
}

if g > 0 {
	
	repeat(g) {
		
		if place_free(x,y+1) {
			
			y++;
			
		}else {
			
			g = 0;
		}
		
	}
	
	
}


if g < 0 {
	
	repeat(-g) {
		
		if place_free(x,y-1) {
			
			y--;
			
		}else {
			
			g = 0;	
			
		}
		
		
		}	
		
		
	}
	
	
	
	
	


// Calcular la dirección

dir = dch - izq;

// Ajustar la posición x del objeto basándose en la dirección


// Comprobar si habría una colisión en la posición x propuesta

if !place_meeting(x + dir * velocidad,y,obj_block) {
	// Si no habría una colisión, mover el objeto
	x += dir * velocidad;


}else {
	
	if (velocidad > 0) {
		
		repeat(velocidad) {
			
			if place_free(x+1,y) {
				
					x++;
				
			}
			
			
		}
		
		
	}
	
	if (velocidad > 0) and dir = -1 {
		
		repeat(velocidad) {
			
			
			if place_free(x-1,y) {
				
				x--;
				
			}
			
			
		}
		
	
	
	}	
	
	
	
}

if place_meeting(x,y,obj_palanca) {
	
	var instancia = instance_place(x,y,obj_palanca);
	
	if set and instancia != noone {
		
		show_message(string(instancia));
		s_acciona(instancia);
		
	}
	
	
	
	
	
}