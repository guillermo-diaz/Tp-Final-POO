as yet unclassified
noPuedeRealizarPrestamo: user libros: libros
^  (libros size > 5 or: (user estaSuspendido or: ((libros detect: [:libro | libro esPrestado]) isEmptyOrNil or: (self tienePrestamoActivo: user))))