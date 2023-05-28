adding
addButtons 
volver := self getButtonReturn.
inputNombre := TextField transparentExtent: 155@30.
inputIde  := TextField transparentExtent: 155@30.
inputDireccion  := TextField transparentExtent: 155@30.
inputTelefono := TextField transparentExtent: 155@30.
inputRepresentante := TextField transparentExtent: 155@30.

inputNombre  borderColor: self colorBorderShapes. 
inputIde  borderColor: self colorBorderShapes.
inputDireccion  borderColor: self colorBorderShapes.
inputTelefono  borderColor: self colorBorderShapes.
inputRepresentante borderColor: self colorBorderShapes.

registrar := Button nombre: 'Registrar' colour: Color green dimension: 120@30.
registrar rounded: (Color r: 7 g: 146 b: 93 range: 255) .

registrar center: rectangulo center; bottom: rectangulo bottom - 30.
inputIde center: rectangulo center; top: rectangulo top + 60.
inputNombre left: inputIde left; top: inputIde bottom + 45.
inputDireccion left: inputIde left; top: inputNombre bottom + 45.
inputTelefono left: inputIde left; top: inputDireccion bottom + 45.
inputRepresentante left: inputIde left; top: inputTelefono bottom + 45.

rectangulo addMorph: registrar; addMorph: inputIde; addMorph: inputNombre; addMorph: inputDireccion ;addMorph: inputTelefono ;addMorph: inputRepresentante.
self addMorph: volver.

volver mouseAction: [
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (InfoBiblioteca sistema: sistemaGestor )
	].
registrar mouseAction: [ 
	|biblio ide txt window| 
	ide := inputIde input.
	(Helper stringIsEmpty: ide) ifFalse: [  
	biblio := Biblioteca crearBibliotecaIde: ide direccion: (inputDireccion input) nombre: (inputNombre input) telefono: (inputTelefono input) representante: (inputRepresentante input).
	(sistemaGestor agregarBiblioteca: biblio) ifTrue: [ 
		txt := 'Biblioteca Registrada'.
		 ] ifFalse: [ 
		txt := 'Id repetido, ingrese otro'.
		 ].
		window := self warningWindow: txt size: 180@65.
		window center: self center; left: self left + 30.
		self addMorph: window.
	
	
]
	 ]
