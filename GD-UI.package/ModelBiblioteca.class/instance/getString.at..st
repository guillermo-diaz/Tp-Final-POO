as yet unclassified
getString: elem at: columnId
	(columnId match: 'nombre') ifTrue:[^ elem nombre ]. 
	(columnId match: 'dirección') ifTrue:[^ elem direccion ]. 
	(columnId match: 'teléfono') ifTrue:[^ elem telefono]. 
	(columnId match: 'representante') ifTrue: [^ elem representante]. 
	^ '...'