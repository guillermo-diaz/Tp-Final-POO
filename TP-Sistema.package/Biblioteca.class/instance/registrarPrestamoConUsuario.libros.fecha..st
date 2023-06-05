actions
registrarPrestamoConUsuario: usuario libros: libros fecha: unaFecha
"solo test"
|audiolibros fechaMax normales prestamo| 
 
((usuario puedeRealizarPrestamoCon: libros) and: ((self tienePrestamoActivo: usuario) not)) ifTrue: [ 
	
	audiolibros := libros select:[:libro| libro esAudiolibro ].
	normales := libros reject: [ :libro| libro esAudiolibro].
	fechaMax := Date today addDays: diasPrestamos. "la fecha max de entrega"
	self prestarLibros: libros.
	
	prestamo := Prestamo crearPrestamoUsuario: usuario libros: normales fechaMax: unaFecha.
	colPrestamos add: prestamo.
	audiolibros ifNotEmpty:[
		|pres2|
		
		pres2 := Prestamo crearPrestamoUsuario: usuario libros: audiolibros  fechaMax: unaFecha. "lo presta por la mitad de los dias"
		colPrestamos add: pres2.
	 ]] ifFalse:  [ ^false ].
^ true



