initialization
addButtons  
|colorBorde|
colorBorde := (Color r: 7 g: 146 b: 93 range: 255) .

nombre := TextField crearTamaño: 155@30.
apellido := TextField crearTamaño: 155@30.
dni := TextField crearTamaño: 155@30.
contraseña := TextField crearTamaño: 155@30.
plus := Checkbox nombre: 'Plus' tamaño: 50@30.
botonRegistrarse := Button nombre: 'Registrarse' colour: Color green dimension: 155@30.
self addMorph: plus.
plus font: (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11).


nombre center: rectangulo center.
nombre position: nombre position - (0@140).
apellido position: nombre position +(0@70).
dni position: apellido position + (0@70).
contraseña position: dni position + (0@70).
plus position: contraseña position + (0@60).
botonRegistrarse position: contraseña position + (0@105); borderColor: colorBorde darker; borderWidth: 3.

self addMorph: nombre; addMorph: apellido; addMorph: dni; addMorph: contraseña; addMorph: botonRegistrarse .



