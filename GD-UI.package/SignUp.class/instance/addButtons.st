initialization
addButtons  
|colorBorde fontVolver |
colorBorde := (Color r: 7 g: 146 b: 93 range: 255) .


volver := Button new.
volver color: Color transparent; extent: 1000@50; borderWidth: 0.
fontVolver := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 13).


volver label: '←  Atrás' font: fontVolver .


nombre := TextField crearTamaño: 155@30.
apellido := TextField crearTamaño: 155@30.
dni := TextField crearTamaño: 155@30.
contraseña := TextField crearTamaño: 155@30.
plus := Checkbox nombre: 'Plus' tamaño: 50@30.
botonRegistrarse := Button nombre: 'Registrarse' colour: Color green dimension: 155@30.
self addMorph: plus.
plus font: ((LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11 )).
				


nombre center: rectangulo center.
nombre position: nombre position - (0@140).
apellido position: nombre position +(0@65).
dni position: apellido position + (0@65).
contraseña position: dni position + (0@65).
plus position: contraseña position + (0@60).
volver position: self bottomLeft - (-20@40).
botonRegistrarse position: contraseña position + (0@95); borderColor: colorBorde darker; borderWidth: 3.







self addMorph: nombre; addMorph: apellido; addMorph: dni; addMorph: contraseña; addMorph: botonRegistrarse; addMorph: volver.

volver mouseAction: [
	self owner delete.
	self delete.
	GestorBiblioteca runWith: sistemaGestor.].