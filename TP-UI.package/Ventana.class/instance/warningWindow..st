as yet unclassified
warningWindow: aName
|window cerrar nombre|
window := BorderedMorph new.
	window extent: 160@65; color: self colorShapes;borderWidth: 2 ; borderColor: self colorBorderShapes .
	
	nombre := StringMorph contents: aName.
	
	
	window center: self center.

	
	cerrar := Button nombre: 'OK' colour: Color gray lighter  dimension: 30@20.
	
	
	cerrar center: window center; borderWidth: 1; borderColor: Color black.
	cerrar bottom: window bottom - 10.
	nombre center: window center.
	nombre bottom: cerrar top - 10.
	
	
	cerrar mouseAction: [ window delete.].
	window addMorph: cerrar.
	window addMorph: nombre.
	^ window