running
run 
|sistema biblio biblio2 libro libro2 libro3 autores autores2 autores3 txt user colLibros col2| 
sistema := Sistema new.
autores := OrderedCollection new.
autores2 := OrderedCollection new.
autores3 := OrderedCollection new.
colLibros := OrderedCollection new.
col2 := OrderedCollection new.

autores := OrderedCollection new.
autores add: (Autor crearAutorNombre: 'Araki Hirohiko').
autores2 add: (Autor crearAutorNombre: 'Naoki Urasawa').
autores3 add: (Autor crearAutorNombre: 'Kentaro Miura').
autores3 add: (Autor crearAutorNombre: 'Kouji Mori').
user := (Usuario crearUsuarioDni: 1 nombre: 'Guille' apellido: 'Diaz' contra: 123).
	biblio := (Biblioteca ide: '1' direccion: 'Perito Moreno' nombre: 'Biblioteca 1' telefono: '123214123' representante: 'Yo').
	biblio2 := (Biblioteca ide: '2' direccion: 'Cumelen' nombre: 'Biblioteca 2' telefono: '123555523' representante: 'Yo').
	libro3 := (Libro crearLibroNombre: '20th Century Boys' editorial: 'Ivrea' añoEdicion: 1900 autores: autores2 ).
	libro := (Libro crearLibroNombre: 'Steel Ball Run' editorial: 'Ivrea' añoEdicion: 2004 autores: autores ).
	libro2 := (Libro crearLibroNombre: 'Berserk' editorial: 'Ivrea' añoEdicion: 2004 autores: autores3 ).
	biblio addLibro: libro.
	biblio addLibro: libro2.
	biblio2 addLibro: libro3.
	colLibros add: libro.
	colLibros add: libro2.
	col2 add: libro3.
	txt := 'Gestor de Bibliotecas'.
	
	user := (Usuario crearUsuarioDni: 1 nombre: 'Guille' apellido: 'Diaz' contra: 123).
	user addBiblioteca: biblio; addBiblioteca: biblio2.
	(biblio2 registrarPrestamoConUsuario: user libros: col2) .
	biblio registrarPrestamoConUsuario: user libros: colLibros.
	

	sistema agregarBiblioteca: biblio.
	sistema agregarBiblioteca: biblio2.
	sistema agregarUsuario: user.
	
^ (self new) initialize; addBackground; addMorphCentered: (Home sistema: sistema) ;openInWindowLabeled: txt 