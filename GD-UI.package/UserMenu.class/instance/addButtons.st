initialization
addButtons 
|col font array |
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11.5).


col := (Color r: 193 g: 193 b: 193).

array := OrderedCollection new.


botonLogout := Button nombre: ''  colour: Color red dimension: 120@30.
botonLogout borderWidth: 3; borderColor: (Color r: 156 g: 10 b: 10 range: 255).

addBiblio := Button nombre: 'Bibliotecas de Interés' colour: (self colorShapesAndButtons)  dimension: 200@30 font: font.
addBiblio color: self colorShapesAndButtons .
pedirPrestamo := Button nombre: 'Pedir Prestamo' colour: (self colorShapesAndButtons) dimension: 200@30 font: font.
devolverPrestamo := Button nombre: 'Devolver Prestamo' colour: (self colorShapesAndButtons) dimension: 200@30 font: font.
cambiarTipoUsuario := Button nombre: 'Cambiar Tipo de Usuario' colour: (self colorShapesAndButtons) dimension: 200@30 font: font.

array add: addBiblio; add: pedirPrestamo ; add: devolverPrestamo ;add: cambiarTipoUsuario.

array do: [ :a| a borderWidth: 2; borderColor:  self colorBorderShapesAndButtons ; extent: 300@40].

addBiblio center: self center.
addBiblio position: addBiblio position - (200@60).
pedirPrestamo position: addBiblio position + (0@80).
devolverPrestamo position: pedirPrestamo position  + (0@80).
cambiarTipoUsuario position: devolverPrestamo  position  + (0@80).
botonLogout  center: rectangulo center.
botonLogout  position: botonLogout position + (0@150).


array do: [:morph | self addMorph: morph ].
self addMorph: botonLogout .

botonLogout mouseAction: [
	self owner delete.
	self delete.
	GestorBiblioteca runWith: sistemaGestor.].
cambiarTipoUsuario mouseAction: [ 
	|window morph|
	self owner delete.
	self delete.
	morph := GestorBiblioteca sistema: sistemaGestor.
	window := morph warningWindow.
		window position: window position + (250@0).

	morph addMorph: window.
	morph openInWindowLabeled: 'Sistema de Bibliotecas'
].
addBiblio mouseAction: [
	self owner delete.
	self delete.
	(AddLibrary user: usuario) openInWindowLabeled: 'Bibliotecas Favoritas'  ].
