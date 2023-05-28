initialization
addButtons  

|colorBorde |

colorBorde := (Color r: 7 g: 146 b: 93 range: 255) .

botonLogin := Button nombre: 'Log in' colour: Color green  dimension: 55@25. 
botonSignup := Button nombre: 'Sign up' colour: Color green dimension:55@25.
inDni := TextField transparentExtent: 155@100. 
inContra := TextField transparentExtent: 155@100. 
inDni borderColor: self colorBorderShapes.
inContra borderColor: self colorBorderShapes.
volver := self getButtonReturn.



self addMorph: inDni; addMorph: inContra; addMorph: botonLogin; addMorph: botonSignup; addMorph: volver.

inDni center: self center.
inContra position: inDni position + (0@80).
botonLogin position: inContra position + (0@50); borderWidth: 3; borderColor: colorBorde darker.
botonSignup position: botonLogin position + (100@0); borderWidth: 3; borderColor: colorBorde darker.

botonLogin mouseAction: [
	|user ow dni window txt|
	dni := inDni input.
	user := sistemaGestor usuario: dni.
	(user) ifNotNil: [  
		(user tieneContraseña: (inContra input)) ifTrue: [   
			ow := self owner.
			self delete.
			ow addMorphCentered: (UserMenu sistema: sistemaGestor user: user) .
		] ifFalse: [ txt := 'Contraseña Incorrecta' ]
	] ifNil: [ 
			txt := 'Usuario no encontrado'
	 ].

	txt ifNotNil: [ 
			window := self warningWindow: txt size: 180@60.
			window center: self center; left: self left + 40.
			self addMorph: window.
		 ].
].
botonSignup mouseAction: [
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (SignUp sistema: sistemaGestor )
].
volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (Home sistema: sistemaGestor )
	 ]

 