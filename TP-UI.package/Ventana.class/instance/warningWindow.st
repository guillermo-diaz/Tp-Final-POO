as yet unclassified
warningWindow
|window cerrar|
window := BorderedMorph new.
	window extent: 160@65; color: self colorShapes .

	window center: self center.

	cerrar := Button nombre: 'OK' colour: Color gray lighter  dimension: 30@20.
	
	cerrar center: window center; borderWidth: 1; borderColor: Color black.
	cerrar position: cerrar position + (0@15).
	cerrar mouseAction: [ window delete.].
	window addMorph: cerrar.
	^ window