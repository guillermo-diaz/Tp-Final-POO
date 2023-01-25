initialization
addButtons  
botonLogin := Button nombre: 'Log in' colour: Color green dimension: 50@20. 
botonSignup := Button nombre: 'Sign up' colour: Color green dimension:50@20.
inDni := TextField crearTamaño: 150@30.
inContra := TextField crearTamaño: 150@30.
self addMorph: inDni; addMorph: inContra; addMorph: botonLogin; addMorph: botonSignup .
inDni center: self center.
inContra position: inDni position + (0@80).

botonLogin position: inContra position + (0@50) .
botonSignup position: botonLogin position + (100@0)
 