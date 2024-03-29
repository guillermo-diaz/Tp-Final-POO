initialization
addButtons 
|col font array nombresBotones|
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11.5).
font weightValue: 800.  

col := (Color r: 193 g: 193 b: 193).

array := OrderedCollection new.

botonLogout := Button nombre: ''  colour: Color red dimension: 120@30.
botonLogout borderWidth: 3; borderColor: (Color r: 156 g: 10 b: 10 range: 255).

addBiblio := Button new  color: (self colorButtons); extent: 200@30.
addBiblio color: self colorButtons .
pedirPrestamo := Button new color: (self colorButtons); extent: 200@30 .
devolverPrestamo := Button new color: (self colorButtons); extent: 200@30.
cambiarTipoUsuario := Button new color: (self colorButtons); extent: 200@30.

array add: addBiblio; add: pedirPrestamo ; add: devolverPrestamo ;add: cambiarTipoUsuario.
nombresBotones := OrderedCollection new.
nombresBotones add: (StringMorph contents: 'Bibliotecas de Interes' font: font).
nombresBotones add: (StringMorph contents: 'Solicitar Prestamo' font: font).
nombresBotones add: (StringMorph contents: 'Devolver Prestamo' font: font).
nombresBotones add: (StringMorph contents: 'Cambiar Tipo de Usuario' font: font).

nombresBotones do: [ :b| b color: (Color black)  ].

array do: [ :a| a label: ''; borderStyle: (Helper getBorderStyle: self colorBorderButtons width: 2)  ; extent: 300@40].
array do: [ :a | a addMorphCentered: nombresBotones removeFirst].

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
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (Login sistema: sistemaGestor).].
cambiarTipoUsuario mouseAction: [ 
	|window morph ow|
	(sistemaGestor  cambiarTipoDe: usuario) ifTrue: [   
	ow := self owner.
	self delete.
	morph := Login sistema: sistemaGestor.
	window := morph warningWindow: 'Se cambió el tipo de usuario' size: 180@60.
	window center: morph center; left: morph left + 40.
	morph addMorph: window.
	ow addMorphCentered: morph.
	]
].
addBiblio mouseAction: [
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (BibliotecasInteres sistema: sistemaGestor user: usuario)   ].
pedirPrestamo mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (PedirPrestamo sistema: sistemaGestor user: usuario) 
	 ].
devolverPrestamo mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (DevolverPrestamo sistema: sistemaGestor user: usuario) 
	 ]
