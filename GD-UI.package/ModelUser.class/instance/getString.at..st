as yet unclassified
getString: elem at: column
column = 'Nombre'	ifTrue: [ ^elem nombre ].
column = 'Apellido'	ifTrue: [ ^elem apellido ].
column = 'DNI'		ifTrue: [ ^elem dni ].
	^ '...'