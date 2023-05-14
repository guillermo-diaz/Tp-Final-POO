as yet unclassified
getString: elem at: columnId
	(columnId match: 'Nombre') ifTrue:[^ elem nombre ]. 
	(columnId match: 'Editorial') ifTrue:[^ elem editorial   ]. 
	(columnId match: 'Año') ifTrue:[^ (elem añoEdicion) asString]. 
	(columnId match: 'Autores') ifTrue: [^ elem nombreAutores ]. 
	^ '...'