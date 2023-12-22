.data
	mensajeBienvenida:.asciz "Bienvenido a StarShip \nInstrucciones de juego: A, S, D, W\n**Para comenzar ingrese su nombre**\n**Para salir presione '1':**\n"
	lenmensajeBienvenida= .-mensajeBienvenida
	inicio_pantalla: .asciz "|**************************************************|\n|          *Intenta aterrizar en Argos*            |\n|                                                  |\n|**************************************************|\n"
	leninicio=.-inicio_pantalla
	planeta: .asciz "|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|                                                  |\n|**************************************************|\n|               Superficie de Argos                |\n|__________________________________________________|\n"
	lenplaneta=.-planeta
	asteroides: .asciz " OOOOOOO OOOO OO$OOOOO OOOOOO O$OOOO OOOOOOO OO$OOOOO OOOOOOO OOO OOOO OOO OOOOO OOOO O$OOOOO OOOOOO$OOOOOOO O OOOOOOO OOO OOOOOO OOOOOOOOOOOO$OOOOOOOOOOOOO OOO OOO OOOO OOO O OOO OOOO OOO OOO OOO OO$OOO OOO O OO OOOO OOO OO OOO OO O$$ OOOO OO OOOO OOO OO OOOO OOO OOOO OOO O OOO OOOO OOO OOO OOO OO OOO OOO O OO O$$O OOO OO OOO OO OOO OOOO OO OOOO OOO OO OOOO OOO O$OO OOO O OOO O$OO OOO OOO OOO OO OOO OOO O OO OOOO OOO OO OOO OO OOO OOOO OO OO$O OOO OO OOOO OOO OOOO OOO O OOO OOOO OOO OOO OOO OO OOO OOO O OO OOOO OOO OO OOO OO OOO OOOO OO OOOO OOO OO OOOO OOO OOOO OOO O OOO O$OO OOO OOO OOO OO OOO OOO O OO OOOO OOO OO OOO OO OOO OOOO OO OOOO OOO OO OOOO OOO OOOO OOO O OOO OOOO OO$O OOO OOO OO"
	inicio_ast: .int 0
	anillo_asteroides: .int 1
	nave: .asciz "V"


	win: .asciz "\n\n"
  .asciz "####### ####### #       ###  #####  ### ######     #    ######  #######  #####  \n"
  .asciz "#       #       #        #  #     #  #  #     #   # #   #     # #       #     # \n"
  .asciz "#       #       #        #  #        #  #     #  #   #  #     # #       #       \n"
  .asciz "#####   #####   #        #  #        #  #     # #     # #     # #####    #####  \n"
  .asciz "#       #       #        #  #        #  #     # ####### #     # #             # \n"
  .asciz "#       #       #        #  #     #  #  #     # #     # #     # #       #     # \n"
  .asciz "#       ####### ####### ###  #####  ### ######  #     # ######  #######  #####  \n"
  .asciz "                                                                                \n"
  .asciz "#       #       #######  #####     #     #####  ####### #######       #          #    ######   #####  #######  #####  \n"
  .asciz "#       #       #       #     #   # #   #     #    #    #            # #        # #   #     # #     # #     # #     #\n"
  .asciz "#       #       #       #        #   #  #          #    #           #   #      #   #  #     # #       #     # # \n"
  .asciz "#       #       #####   #  #### #     #  #####     #    #####      #     #    #     # ######  #  #### #     #  #####  \n"
  .asciz "#       #       #       #     # #######       #    #    #          #######    ####### #   #   #     # #     #       # \n"
  .asciz "#       #       #       #     # #     # #     #    #    #          #     #    #     # #    #  #     # #     # #     #  \n"
  .asciz "####### ####### #######  #####  #     #  #####     #    #######    #     #    #     # #     #  #####  #######  #####  \n"
	.asciz "\n"
	.asciz "＜（￣︶￣）＞ ＜（￣︶￣）＞ ＜（￣︶￣）＞\n"
	lenwin=.-win
	cls:.asciz "\x1b[H\x1b[2J" //Limpia pantalla
          lencls=.-cls
	pos_nave: .int 26
	letrasMovimientoNave: .asciz " "
	bandera_nave: .int 0
	espacioVacioParaNave: .asciz " " //Para que vuelva aparecer la nave
	pos_asteroides: .int 1008
	vida:.int 3
	vida_1:.asciz " "
	vida_2:.asciz "Vidas: "
	game_over: .asciz "\n"
		    .asciz "\n######  ####### ######  ######  ###  #####  ####### #######\n"
       .asciz "#     # #       #     # #     #  #  #     #    #    #\n"
       .asciz "#     # #       #     # #     #  #  #          #    #\n"
       .asciz "######  #####   ######  #     #  #   #####     #    #####\n"
       .asciz "#       #       #   #   #     #  #        #    #    #\n"
       .asciz "#       #       #    #  #     #  #  #     #    #    #\n"
       .asciz "#       ####### #     # ######  ###  #####     #    #######\n"
		   .asciz "\n\n"
		   .asciz "\_(-_-)_/   \_(-_-)_/   \_(-_-)_/\n"
	lengameOver= .-game_over
	capitan: .asciz "\nCapitán: "
        teclaInicio: .ascii " " //Hace referencia al nombre o  la 's'
	//mensaje_retry:.asciz "\n¿Quieres jugar de nuevo?\n S/N"
	//letra_retry: .asciz " "


.text
mostrarMensajeBienvenida:
.fnstart
	push {r0,r1,r2,r7,lr}           //lo que hay que hacer si o si para ver en pantalla
	mov r7, #4
	mov r0, #0
	mov r2, $lenmensajeBienvenida
	ldr r1, = mensajeBienvenida
	swi 0
	bal leerPorTecladoLaSParaBienvenida               //Linea 75
	pop {r0,r1,r2,r7,lr}
	bx lr
.fnend

leerPorTecladoLaSParaBienvenida:   //Verificar si se presiona la S
.fnstart
	push {r0,r1,r2,r7,lr}
        mov r7, #3	//lee por teclado
        mov r0, #0	//ingresa cadena
        mov r2, #15	//leer caracteres
        ldr r1, =teclaInicio //donde se guarda
        swi 0 //Hasta aca lee el teclado
	bl compararSInicio 		//linea 85
	pop {r0,r1,r2,r7,lr}
	bx lr
.fnend
compararSInicio:
.fnstart				//comparo 1 con la tecla de inicio
	push {r3,lr}
        ldr r3,=teclaInicio                  // Cargar el carácter leído en r0
        ldrb r3,[r3]
	cmp r3, #49                   // Comparar con el código ASCII del numero 1
	beq fin	 			//si presiona el 1 salta a fin, linea 530
	pop {r3,lr}
        bx lr                          // Volver desde la función
.fnend

mostrar_capitan:
.fnstart
        push {r0,r1,r2,r7,lr}
        mov r7, #4
        mov r0, #0
        mov r2, #12
        ldr r1, =capitan
        swi 0
        pop {r0,r1,r2,r7,lr}
        bx lr
.fnend
mostrar_nombre:
.fnstart
	//guarda en teclaInicio el nombre que puso el usuario al inicio
        push {r0,r1,r2,r7,lr}
        mov r7, #4
        mov r0, #1
        mov r2, #15
        ldr r1, =teclaInicio
        swi 0
        pop {r0,r1,r2,r7,lr}
        bx lr
.fnend


mostrar_pantalla:
	.fnstart
	push {r0,r1,r2,r7,lr}
	//lo que hay que hacer si o si para ver en pantalla
	mov r7, #4
        mov r0, #0
        mov r2, #leninicio	//donde inicia el entorno
        ldr r1, =inicio_pantalla
        swi 0

	mov r7, #4
	mov r0, #0
	mov r2, #lenplaneta
	ldr r1, =planeta
	swi 0
	bl mostrarVidas         //linea 444
	bl mostrar_capitan	//linea 97
	bl mostrar_nombre	//linea 108
	pop {r0,r1,r2,r7,lr}
	bx lr
	.fnend

//Posicion actual nave:
//Lectura teclado
verificarLetrasMovNave:
.fnstart
	push {r0, r1, r2, r3, r4, r5, lr}
    	mov r7, #3
    	mov r0, #0
    	mov r2, #1
	ldr r1, =letrasMovimientoNave
	swi 0

    	ldrb r0, [r1]                  // Cargar el carácter leído en r0
    	cmp r0, #'a'                   // Comparar con el código ASCII de la tecla 'A'
    	beq condicionarMovIzquierda
	cmp r0, #'A'
	beq condicionarMovIzquierda   //linea 178
    	cmp r0, #'d'                   // Comparar con el código ASCII de la tecla 'D'
    	beq condicionarMovDerecha
	cmp r0, #'D'
	beq condicionarMovDerecha     //linea 196
    	cmp r0, #'w'                   // Comparar con el código ASCII de la tecla 'W'
    	beq condicionarMovRetroceder
	cmp r0, #'W'
    	beq condicionarMovRetroceder   //linea 214
    	cmp r0, #'s'                   // Comparar con el código ASCII de la tecla 'S'
    	beq condicionarMovAvanzar
	cmp r0, #'S'
    	beq condicionarMovAvanzar		//linea 226
	bal finVer                          // Volver desde la función
	condicionarMovIzquierda:
		ldr r3,=planeta
    		ldr r1, =pos_nave //cuando se preciona el ascii "A" se carga la direccion de la  posicion de la nave en r1
		ldr r2,[r1]	//en r2 se guarda la posicion de donde se encuentra la nave
		sub r2, r2, #1	//por cada vez que se presiona la "A" se le resta una posicion a la nave para que se desplace hacia la izquierda
		//actualizo la posicion de la nave con mi nueva posicion
		ldrb r4, [r2, r3] //cargo la posicion del planeta y el tablero en r4 para poder compararlo con el ascii que quiero
		mov r5, #'|' //cargo la barra en el r5
		cmp r4, r5 //comparo para que mi nave sepa cuando colisiona con la barra y deje de avanzar
		bne movimientoIzquierda//linea 190
    		bx lr
		movimientoIzquierda:
		ldr r1,=pos_nave
		ldr r2, [r1]
		sub r2, r2, #1
		str r2, [r1]
		bx lr

	condicionarMovDerecha:
		ldr r3,=planeta
    		ldr r1, =pos_nave //idem izquierda
		ldr r2, [r1]
		add r2, r2, #1 //le sumo uno para que se desplace hacia la derecha
		ldrb r4, [r2, r3] //cargo la posicion del planeta y el tablero en r4 para poder compararlo con el ascii que quiero
		mov r5, #'|' //cargo la barra en el r5
		cmp r4, r5 //comparo para que mi nave sepa cuando colisiona con la barra y deje de avanzar
		bne movimientoDerecha //linea 207
		bx lr

		movimientoDerecha:
			ldr r1, =pos_nave //idem izquierda
			ldr r2, [r1]
			add r2, r2, #1 //le sumo uno para que se desplace hacia la derecha
			str r2, [r1] //guardo la nueva posicion en el tablero
			bx lr

	condicionarMovAvanzar:
		ldr r3,=planeta
    		ldr r1, =pos_nave
		ldr r2, [r1] //cargo la posicion de la nave
		add r2, r2, #53 //esto se le suma para que la nave pase a la siguiente columna
		str r2, [r1] //actualizo la posicion de la nave
		ldrb r4, [r2, r3] //cargo la posicion del planeta y el tablero en r4 para poder compararlo con el ascii que quiero
		mov r5, #'*' //cargo la barra en el r5
		cmp r4, r5 //comparo para que mi nave sepa cuando colisiona con la barra y deje de avanzar
		//	beq mostrarMensajeGano
		bx lr

	condicionarMovRetroceder:
		ldr r3,=planeta
		ldr r1, =pos_nave
		ldr r2, [r1]
		sub r2, r2,#53 // esto se le resta para que la  nave vuelva a la columna anterior
		ldr r4, [r1]
		ldrb r4, [r2, r3] //cargo la posicion del planeta y el tablero en r4 para poder compararlo con el ascii que quiero
		mov r5, #'*' //cargo la barra en el r5
		cmp r4, r5 //comparo para que mi nave sepa cuando colisiona con la barra y deje de avanzar
		bne retroceder //linea 238
		bx lr

		retroceder:
			ldr r1, =pos_nave //idem izquierda
			ldr r2, [r1]
			sub r2, r2, #53 //esto se le resta para que la nave vuelva a la columna anterior
			str r2, [r1] //guardo la nueva posicion en el tablero
			bx lr
	finVer:
	pop {r0,r1,r2,r3,r4,r5,lr}
	bx lr
.fnend

//subrutinas para saber si la nave llego a argos
llego:
.fnstart

	push {r0,r1,r6, lr}
	ldr r0, =pos_nave
	ldr r0, [r0]
	mov r6, #1007
	cmp r0,r6
	bgt llego_nave  //linea 260
	bal finLleg
	//en caso de estar en la anteultima fila cambia la bandera
	llego_nave:

		ldr r0, = bandera_nave
		ldr r1, [r0]
		add r1, r1, #1
		str r1, [r0]
		bx lr
	finLleg:
	pop {r0,r1,r6,lr}
	bx lr
.fnend

//Asteroides
cargarAsteroides:
.fnstart
	push {r0,r1,r2,r3,r4,r5,lr}
 	ldr r0, =planeta
        ldr r1, = asteroides
	ldr r5, =inicio_ast
	ldr r5, [r5] //Suma el valor de "inicio_ast" a r5 para obtener la posicion de inicio de la cadena "asteroides" en cada iteraci�n.
	add r1, r5
        ldr r2, =pos_asteroides
        ldr r2, [r2]
        add r0, r2
        mov r3, #50 //Establece el valor de r3 en 50, que representa la cantidad de caracteres que se asignar�n en cada iteraci�n.
	//Entra en un bucle que se ejecuta 50 veces
loop:
        ldrb r4, [r1], #1
        strb r4, [r0], #1
        subs r3, r3, #1 //Decrementa r3 en 1 para seguir asignando caracteres.
        bne loop //Compara el valor de r3 con 0 para verificar si se han asignado todos los caracteres. Si r3 no es igual a 0,contin�a asignando caracteres.
	pop {r0,r1,r2,r3,r4,r5,lr}
	bx lr
.fnend

actualizarPosicionAsteroides:
.fnstart
        push {r0,r1,r4,r5,lr}
        ldr r0, =pos_asteroides
        ldr r1, [r0]
        sub r1, r1, #53 //le resto 53 para que vaya subiendo por fila
        cmp r1, #0 //Esta comparacion verifica si la posicion de los asteroides es menor que 0, lo que indicaria que se han superado todas las filas y es necesario reiniciar la posici�n.
        blt reiniciarPosicionAsteroides //Si la posicion es menor que 0 (resultado de la comparacion es verdadero, se salta a la etiqueta reiniciar_pos(linea 307)
        str r1, [r0]
	bal finAct
	reiniciarPosicionAsteroides:
        	mov r1, #1008
        	str r1, [r0]
      		ldr r4, =inicio_ast  //Se establece el valor de r4 en el caracter "0" que se utilizar para reiniciar los caracteres en la matriz
		ldr r5, [r4]  //Se almacena el valor de r4 en la posicin de memoria apuntada por r0. Esto significa que se reemplaza el caracter existente en esa posicion con el caracter "O".
		add r5, #50  //Al sumar 50 a r5, se desplaza el puntero 50 posiciones hacia adelante en la memoria
		str r5, [r4]
		bx lr
	finAct:
	pop {r0,r1,r4,r5,lr}
        bx lr
.fnend

borrar_asteroides:
.fnstart
	push {r0,r1,lr}
        ldr r0, =planeta
bucle_borrar: //Este bucle se ejecutara hasta que se encuentre el valor cero en el registro r1.
	ldrb r1, [r0], #1  // Carga el siguiente carácter de la cadena
        cmp r1, #'O'    //Compara el carácter con 'O'
        beq reemplazar     //Salta a la etiqueta 'remplazar' si es igual a 'O' (linea 331)
	cmp r1,#'$'
	beq reemplazar
        bne continuar    // Salta a la etiqueta 'continuar' si no es igual a 'O'(linea 334)
	bal finBuc
	reemplazar:
       		mov r1, #' '
        	strb r1, [r0, #-1] //borra los asteroides de la anterior posicion
	continuar:
        	cmp r1, #0 //Si el valor de r1 es igual a cero, significa que se ha recorrido toda la cadena y no quedan m�s caracteres por procesar.
        	bne bucle_borrar
		bx lr
	finBuc:
	pop {r0,r1,lr}
	bx lr
.fnend


limpiar:
.fnstart
	push {r0,r1,r2,r7}
	mov r0,#1
	ldr r1,=cls
	ldr r2,=lencls
	mov r7,#4
	swi 0
	pop {r0,r1,r2,r7}
	bx lr
.fnend

cargarNaveEnPantalla:
.fnstart
	push {r0,r1,r2,r3,r4,lr}
	ldr r0, = planeta           // Cargar la dirección de memoria del planeta en r0
        ldr r2, = nave                  //cargo la direccion de memoria de la nave en r2
        ldr r2, [r2]                    //asigno el valor guardado en memoria
        ldr r1, = pos_nave              //cargo direccion de memoria de pos_inicial
        ldr r1, [r1]
        add r0, r1              // Sumar el desplazamiento de la posición  nave
      	ldrb r2, [r0]               // Cargar el valor actual del planeta en la posici�n de la nave
	cmp r2, #'O'               // Comparar con el c�digo ASCII de 'O'
	beq posicionarNaveEnComienzo  // Si es igual, saltar a la etiqueta "nave_comienzo" para reiniciar la posici�n de la nave
	cmp r2, #'$' //si la nave toca este simbolo
	beq sumarVida //salta a sumar vida, donde se le suma una cada vez que lo toca
	ldr r2, =nave               // Cargar la direcci�n de memoria de la nave en r2
	ldr r2, [r2]                // Cargar el valor guardado en memoria de la nave
	strb r2, [r0]
	bal finCarg
	sumarVida:
        	ldr r3,=vida
        	ldr r4,[r3]
       		add r4, #1
        	str r4, [r3]
        	bx lr
	posicionarNaveEnComienzo:
		bl contadorChoquesNave
	finCarg:       // Guardar el valor de la nave en el planeta
	pop {r0,r1,r2,r3,r4,lr}
	bx lr
.fnend
ganaste:
.fnstart
	push {r0,r1,r2,r7,lr}
	bl limpiar
	mov r7, #4
	mov r0, #0
	mov r2, #lenwin //cargo el length del cartel win
	ldr r1, =win //cargo la direccion del cartel win
	swi 0
	pop {r0,r1,r2,r7,lr}
	bal fin
	//bal jugarDeNuevo //fin para que salga del juego
.fnend


borrarRastroNave:
.fnstart
	push {r0,r1,r3,lr}
	ldr r0, = planeta           // Cargar la dirección de memoria del planeta en r0
        ldr r1, = pos_nave              //cargo direccion de memoria de pos_inicial
        ldr r1, [r1]
        add r0, r1              // Sumar el desplazamiento de la posición  nave
        ldr r3, =espacioVacioParaNave
        ldr r3, [r3]
        strb r3, [r0]
	pop {r0,r1,r3,lr}
	bx lr
.fnend

contadorChoquesNave:
.fnstart
	push {lr}
	ldr r1,=vida
	ldr r2,[r1]
	sub r2,#1 //se le resta una vida cada vez que choca (esto se modifica aca y modifica mi ascii vacio vida_1)
	str r2,[r1] //actualizo vidas
	pop {lr}
	bx lr
.fnend


mostrarVidas:
.fnstart
	push {r0,r1,r2,r7,lr}
	ldr r1,=vida //cargo la direccion de mi contador
	ldr r2,[r1] //cargo el contenido
	cmp r2, #0
	beq mostrar_gameOver
	bl mostrar_vidas
	bal finMos
	mostrar_gameOver:
        	bl limpiar
        	mov r7, #4
        	mov r0, #0
        	mov r2, $lengameOver
        	ldr r1, =game_over
        	swi 0
        	bal fin				// 'fin' no es funcion, es una etiqueta del main
	finMos:
	pop {r0,r1,r2,r7,lr}
	bx lr
.fnend

mostrar_vidas:
.fnstart
	push {lr}
	bl convertidor_int
	mov r7,#4
	mov r0,#0
	mov r2,#7
	ldr r1,=vida_2 //mensaje de vida
	swi 0
	mov r7, #4
	mov r0, #0
	mov r2, #1
	ldr r1, =vida_1 //ascii vacio que se va a ir modificando de acuerdo a la cantidad de veces que toque un diamante
	swi 0
	pop {lr}
	bx lr
	convertidor_int:
       		ldr r0,=vida //emppieza con 3
       		ldr r0,[r0] //guardo
        	ldr r1,=vida_1 //traigo mi ascii vacio
        	add r0, #48 //le sumo al numero la cantidad necesaria para que sea equivalente al ascii
        	strb r0,[r1] //actualiza con la nueva vida
        	bx lr
.fnend
.global main

main:
	bl limpiar
	bl mostrarMensajeBienvenida
juego:
	bl limpiar

	bl cargarAsteroides

	bl cargarNaveEnPantalla

	bl actualizarPosicionAsteroides

	bl mostrar_pantalla

	bl borrarRastroNave

    	//Leer entrada del jugador
    	bl verificarLetrasMovNave

	bl borrar_asteroides

    	// Comprobar si el jugador ha ganado
	ldr r3, =bandera_nave
	ldr r3, [r3]
	cmp r3, #1
	beq ganaste

	bl llego
	bl juego		// Volver al loop principal
fin:
	mov r7,  #1
	swi 0
