actions
registrarPrestamoConUsuario: usuario libros: libros fecha: unaFecha
"solo test"
|audiolibros fechaMax normales prestamo| 
 
((usuario puedeRealizarPrestamoCon: libros) and: ((self tienePrestamoActivo: usuario) not)) ifTrue: [ 
	
	audiolibros := libros select:[:libro| libro esAudiolibro ].
	normales := libros reject: [ :libro| libro esAudiolibro].
	fechaMax := unaFecha addDays: diasPrestamos. "la fecha max de entrega"
	self prestarLibros: libros.
	
	normales ifNotEmpty: [  
	prestamo := Prestamo crearPrestamoUsuario: usuario libros: normales fechaMax: fechaMax.
	colPrestamos add: prestamo.].
	audiolibros ifNotEmpty:[
		|pres2|
		
		pres2 := Prestamo crearPrestamoUsuario: usuario libros: audiolibros  fechaMax: (unaFecha addDays: diasPrestamos //2). "lo presta por la mitad de los dias"
		colPrestamos add: pres2.
	 ]] ifFalse:  [ ^false ].
^ true




