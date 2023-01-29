initialization
addButtons  

nombre := TextField crearTamaño: 155@30.
apellido := TextField crearTamaño: 155@30.
dni := TextField crearTamaño: 155@30.
contraseña := TextField crearTamaño: 155@30.
plus := Checkbox nombre: 'Plus' tamaño: 80@30.




nombre center: rectangulo center.
nombre position: nombre position - (0@130).
apellido position: nombre position +(0@70).
dni position: apellido position + (0@70).
contraseña position: dni position + (0@70).
plus position: contraseña position + (0@40).





self addMorph: nombre; addMorph: apellido; addMorph: dni; addMorph: contraseña; addMorph: plus.



