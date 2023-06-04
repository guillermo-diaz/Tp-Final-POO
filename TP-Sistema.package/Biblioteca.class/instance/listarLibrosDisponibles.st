actions
listarLibrosDisponibles 
^ colLibros reject: [:libro | libro esPrestado].