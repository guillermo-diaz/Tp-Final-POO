as yet unclassified
Precargado
|sistema biblio1 biblio2 biblio3  colLibros user1 user2 user3 user4 | 
sistema := self new.

"Libros"
colLibros := Sistema colLibrosPrecargados.
colLibros do: [ :libro| libro colAutores do:[:autor| sistema agregarAutor: autor]]. "agrego autores al sistema"

"Bibliotecas"
biblio1 := Biblioteca ide: '111' direccion: 'Corrientes 560' nombre: 'Casa de las leyes' telefono: '299-448-1139' representante: 'Gregorio' dias: 30.
biblio2 := Biblioteca ide: '222' direccion: 'Sta. Teresa' nombre: 'Enrique Rocca' telefono: '299-413-5645' representante: 'Enrique Rocca' dias: 20.
biblio3 := Biblioteca ide: '444' direccion: 'Calle 345' nombre: 'November Rain' telefono: '299-913-1441' representante: 'Hobie Brown' dias: 10.

sistema agregarBiblioteca: biblio1.
sistema agregarBiblioteca: biblio2.
sistema agregarBiblioteca: biblio3.


"agrego libros a biblio1"
1 to: 12 do: [ :i | biblio1 addLibro: (colLibros at: i)].
13 to: 28 do: [ :i | biblio2 addLibro: (colLibros at: i)].
29 to: 43 do: [ :i | biblio3 addLibro: (colLibros at: i)].

"Usuarios"
"usuario con varios prestamos entre ellos uno atrasado"
user1 := UsuarioPlus crearUsuarioDni: '1' nombre: 'Guillermo' apellido: 'Diaz' contra: '1' fecha: Date tomorrow.
"usuario con libros atrasados"
user2 := Usuario crearUsuarioDni: '2' nombre: 'Jamiro' apellido: 'Zuñiga' contra: '2'.
"usuario nuevo sin ningun prestamo ni bibliteca favorita"
user3 := UsuarioPlus crearUsuarioDni: '3' nombre: 'Franco' apellido: 'Benitez' contra: '3' fecha: (Date today addDays: 30).
"usuario suspendido"
user4 := Usuario crearUsuarioDni: '4' nombre: 'Cristopher' apellido: 'Ovaillos' contra: '4'.
user4 diasSuspendido: 4.

sistema agregarUsuario: user1.
sistema agregarUsuario: user2.
sistema agregarUsuario: user3.
sistema agregarUsuario: user4.

user1 addBiblioteca: biblio1; addBiblioteca: biblio2; addBiblioteca: biblio3.
user2 addBiblioteca: biblio1; addBiblioteca: biblio2.
user4 addBiblioteca: biblio1; addBiblioteca: biblio2; addBiblioteca: biblio3.

"user1"
biblio3 registrarPrestamoConUsuario: user1 libros: (Sistema elegirLibros: #[41 42 43] colLibros: colLibros) fecha: (Date today subtractDays: 20).
(biblio3 prestamosActivosDe: user1) do: [:pres | pres fechaRegistro: (Date today subtractDays: 100)].
biblio2 registrarPrestamoConUsuario: user1 libros: (Sistema elegirLibros: #[21 22 25 26 28] colLibros: colLibros).
biblio1 registrarPrestamoConUsuario: user1 libros: (Sistema elegirLibros: #[3 4 10] colLibros: colLibros).

"user2"
biblio1 registrarPrestamoConUsuario: user2 libros: (Sistema elegirLibros: #[1 11 12] colLibros: colLibros) fecha: (Date today subtractDays: 50).
(biblio1 prestamosActivosDe: user2) do: [:pres| pres fechaRegistro: (Date today subtractDays: 90)].

biblio2 registrarPrestamoConUsuario: user2 libros: (Sistema elegirLibros: #[13 16 20 23 19] colLibros: colLibros) fecha: (Date today subtractDays: 100).
(biblio2 prestamosActivosDe: user2) do: [:pres| pres fechaRegistro: (Date today subtractDays: 135)].


^ sistema 