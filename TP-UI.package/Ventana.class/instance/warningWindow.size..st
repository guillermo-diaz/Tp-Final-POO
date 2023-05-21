as yet unclassified
warningWindow: aName size: size
|window cerrar nombre|
window := BorderedMorph new.
	window extent: size; color: self colorShapes; borderColor: self colorBorderShapes .
	
	nombre := StringMorph contents: aName.
	
	
	window center: self center.

	
	cerrar := Button nombre: 'OK' colour: Color gray lighter  dimension: 30@20.
	
	
	cerrar center: window center; borderWidth: 1; borderColor: Color black.
	cerrar position: cerrar position + (0@15).
	nombre center: window center.
	nombre position: nombre position - (0@10).
	
	
	cerrar mouseAction: [ window delete.].
	window addMorph: cerrar.
	window addMorph: nombre.
	^ window