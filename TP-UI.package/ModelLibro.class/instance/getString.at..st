as yet unclassified
getString: elem at: columnId
	(columnId match: 'Nombre') ifTrue:[^ (elem nombre) asMorph ]. 
	(columnId match: 'Editorial') ifTrue:[^ elem editorial   ]. 
	(columnId match: 'Año') ifTrue:[^ (elem añoEdicion) asString]. 
	(columnId match: 'Autores') ifTrue: [^ elem nombreAutores ]. 
	(columnId match: 'Tipo y Estado') ifTrue: [
		elem esPrestado ifTrue: [^'Prestado' asMorph color: Color red] ifFalse: [^ 'Disponible' asMorph  color: (Color fromString: '81FE4C')]
		].
	^ '...'