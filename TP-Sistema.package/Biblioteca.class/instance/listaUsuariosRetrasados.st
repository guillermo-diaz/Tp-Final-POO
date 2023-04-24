as yet unclassified
listaUsuariosRetrasados 
|listaUsers usuario| 
listaUsers := OrderedCollection new.

colPrestamos do: [ :prestamo| 
	prestamo estaAtrasado ifTrue: [  
		usuario := prestamo getUsuario.
		listaUsers  detect: [:user| usuario esIgual: user  ] "en el caso q sea un usuario plus 
		y tenga 2 prestamos retrasados, controlo de no agregarlo 2 veces" ifNone:[listaUsers add: usuario] ]].


^ listaUsers