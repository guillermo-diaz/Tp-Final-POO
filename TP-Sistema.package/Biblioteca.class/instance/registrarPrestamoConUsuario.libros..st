as yet unclassified
registrarPrestamoConUsuario: usuario libros: libros 
|audiolibros fechaMax| 
 
((usuario puedeRealizarPrestamoCon: libros) and: ((self verificarLibros: libros) and: ((self tienePrestamoActivo: usuario) not))) ifTrue: [ 
	
	audiolibros := libros select:[:libro| libro esAudiolibro ].
	fechaMax := Date today addDays: diasPrestamos. "la fecha max de entrega"
	self prestarLibros: libros.
	
	audiolibros ifEmpty: [
		|prestamo| 
		prestamo := Prestamo crearPrestamoUsuario: usuario libros: libros fechaMax: fechaMax.
		colPrestamos add: prestamo.
	] ifNotEmpty:[
		|pres1 pres2 normales|
		normales := libros reject: [:libro| libro esAudiolibro].
		"Primero el prestamo con los libros normales"
		normales ifNotEmpty: [  
			pres1 := Prestamo crearPrestamoUsuario: usuario libros: normales fechaMax: fechaMax.
			colPrestamos add: pres1.
		]. 
		pres2 := Prestamo crearPrestamoUsuario: usuario libros: audiolibros  fechaMax: (Date today addDays: diasPrestamos //2). "lo presta por la mitad de los dias"
		colPrestamos add: pres2.
	 ]] ifFalse:  [ ^false ].
^ true



