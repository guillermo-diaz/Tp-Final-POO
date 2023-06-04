actions
verificarLibros: libros

libros detect: [:libro| libro esPrestado] ifNone: [ ^true ].
^ false