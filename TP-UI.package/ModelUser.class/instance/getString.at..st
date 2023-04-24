as yet unclassified
getString: elem at: columnId
(columnId match:  'Nombre')	ifTrue: [ ^elem nombre ].
(columnId match: 'Apellido')	ifTrue: [ ^elem apellido ].
(columnId match:  'DNI')		ifTrue: [ ^elem dni ].
	^ '...'