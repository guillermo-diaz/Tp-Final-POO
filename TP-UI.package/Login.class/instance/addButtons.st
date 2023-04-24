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
	|ow user biblio libro colLibros| 
	colLibros := OrderedCollection new.
	biblio := (Biblioteca ide: 1 direccion: 'Perito Moreno' nombre: 'Biblioteca 1' telefono: '123214123' representante: 'Yo').
	libro := (Libro crearLibroNombre: 'Steel Ball Run' editorial: 'Ivrea' añoEdicion: 2004 autores: (OrderedCollection new)).
	biblio addLibro: libro.
	colLibros add: libro.
	
	
	ow := self owner.
	self delete.
	user := (UsuarioPlus  crearUsuarioDni: 1 nombre: 'Guille' apellido: 'Diaz' contra: 123).
user addBiblioteca: biblio .
biblio registrarPrestamoConUsuario: user libros: colLibros.
	ow addMorphCentered: (UserMenu sistema: sistemaGestor user: user) .
	
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

 