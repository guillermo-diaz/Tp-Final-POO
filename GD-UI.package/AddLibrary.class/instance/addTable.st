adding
addTable  
"user := (Usuario crearUsuarioDni: 1 nombre: 'Guille' apellido: 'Diaz' contra: 123).
user addBiblioteca:  (Biblioteca ide: 1 direccion: 'Perito Moreno' nombre: 'Biblio 1' telefono: '123214123' representante: 'Yo').
user addBiblioteca:  (Biblioteca ide: 1 direccion: 'Perito Moreno 2' nombre: 'Biblio 2' telefono: '123214123' representante: 'Yo2').
user addBiblioteca:  (Biblioteca ide: 1 direccion: 'Perito Moreno 3' nombre: 'Biblio 3' telefono: '123214123' representante: 'Yo3').
"

usuario ifNotNil: [  
table := Table aModel: (ModelBiblioteca aCollection: usuario bibliotecasInteres ) aColumns: #('Nombre' 'Dirección' 'Teléfono' 'Representante') asOrderedCollection  extent: 550@250. 
table headerColor: theme shape. 

"table color: theme shape. 
m := Helper RoundedTable: table aColor: theme shape. 
m center: rectangleContainer center; bottom: rectangleContainer bottom - 20."

table center: rectangleContainer center; bottom: rectangleContainer bottom - 20.

"rectangleContainer addMorph: m."
rectangleContainer addMorph: table . ]