initialization
addButtons  

|colorBorde|
colorBorde := (Color r: 7 g: 146 b: 93 range: 255) .

botonLogin := Button nombre: 'Log in' colour: Color green  dimension: 55@25. 
botonSignup := Button nombre: 'Sign up' colour: Color green dimension:55@25.
inDni := TextField crearTamaño: 155@30.
inContra := TextField crearTamaño: 155@30.
inDni ghostText: 'Ingrese el DNI'; borderWidth: 3; borderColor: Color gray; maxLength: 8. 
inContra ghostText: 'Ingrese la contraseña'; borderWidth: 3; borderColor: Color gray.



self addMorph: inDni; addMorph: inContra; addMorph: botonLogin; addMorph: botonSignup .

inDni center: self center.
inContra position: inDni position + (0@80).
botonLogin position: inContra position + (0@50); borderWidth: 3; borderColor: colorBorde darker.
botonSignup position: botonLogin position + (100@0); borderWidth: 3; borderColor: colorBorde darker.

botonLogin mouseAction: [UserMenu titulo: 'Menu Usuario' sistema: sistema.
	self owner close.
	self delete. ].
botonSignup mouseAction: [

	SignUp titulo: 'Registrarse' sistema: sistema.
	
	self owner close.
	self delete
	].

 