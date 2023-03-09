as yet unclassified
getString: elem at: columnId
	(columnId match: 'Fecha Inicio') ifTrue:[^ elem fechaInicio asString]. 
	(columnId match: 'Fecha Limite') ifTrue:[^ elem fechaMax asString].  
	(columnId match: 'Atrasado') ifTrue: [ (elem estaAtrasado)
		ifTrue: [ ^ 'Si' ] ifFalse: [ 'No' ]
		]. 
	^ '...'