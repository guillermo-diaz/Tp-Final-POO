as yet unclassified
nombreAutores 
|autores| 
autores := ''.
1 to: (colAutores size) do: [ :index| 
	autores := autores, (colAutores at: index) nombre.
	(index <= ((colAutores size) - 1)) ifTrue: [ autores := autores, ', '. ]
	].
^ autores 