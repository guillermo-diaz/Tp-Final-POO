accessing
verificarLibros: libros
^ libros allSatisfy: [ :libro | (libro esPrestado ) not ].