initialization
addButtons  
|colorBorde |
colorBorde := (Color r: 7 g: 146 b: 93 range: 255) .


volver := self getButtonReturn.

nombre := TextField transparentExtent: 155@30.
apellido := TextField transparentExtent: 155@30.
dni := TextField transparentExtent: 155@30.
contraseña := TextField transparentExtent: 155@30.
plus := Checkbox new extent: 100@100.

nombre borderColor: self colorBorderShapes; maxLength: 10. 
apellido borderColor: self colorBorderShapes.
dni borderColor: self colorBorderShapes.
contraseña borderColor: self colorBorderShapes.

botonRegistrarse := Button nombre: 'Registrarse' colour: Color green dimension: 155@30.
self addMorph: plus.

nombre center: rectangulo center.
nombre position: nombre position - (0@140).
apellido position: nombre position +(0@65).
dni position: apellido position + (0@65).
contraseña position: dni position + (0@65).
plus right: rectangulo right - 20; top: contraseña bottom + 34.
botonRegistrarse position: contraseña position + (0@95); borderColor: colorBorde darker; borderWidth: 3.







self addMorph: nombre; addMorph: apellido; addMorph: dni; addMorph: contraseña; addMorph: botonRegistrarse; addMorph: volver.


volver mouseAction: [
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (Login sistema: sistemaGestor).].
botonRegistrarse mouseAction: [ 
	|user unDni txt window| 
	unDni := dni input.
	
	self checkLength ifTrue: [  
	(Helper stringIsEmpty: unDni) ifFalse: [ 
		 
		(plus selected) ifTrue: [ user := UsuarioPlus crearUsuarioDni: unDni nombre: nombre input apellido: apellido input contra: contraseña input fecha: Date today.] 
		ifFalse: [ user := Usuario crearUsuarioDni: unDni nombre: nombre input apellido: apellido input contra: contraseña input  ].
		
		(sistemaGestor agregarUsuario: user) ifTrue: [ 
		txt := 'Usuario Registrado'.
		 ] ifFalse: [ 
		txt := 'DNI repetido, ingrese otro'.
		 ].
	
	
	window := self warningWindow: txt size: 160@70.
	window center: self center; left: self left + 40.
	self addMorph: window.
	 ] ] ifFalse: [  window := self warningWindow: 'Datos muy largos' size: 160@70.
	window center: self center; left: self left + 40.
	self addMorph: window.].

]