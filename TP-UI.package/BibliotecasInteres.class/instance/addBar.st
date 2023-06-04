adding
addBar 
|bibliotecasDisponibles|
barra := SearchMorph new. 
barra extent: 430@29; borderWidth: 0.
barra ghostText: 'SELECCIONE UNA BIBLIOTECA'.
listaBiblioteca := Dictionary new.

sistemaGestor ifNotNil: [  
bibliotecasDisponibles := (sistemaGestor ofrecerBibliotecasPara: usuario).
bibliotecasDisponibles do: [:biblio| listaBiblioteca at: ('#',biblio identificador,' - ', biblio nombre) put: (biblio)].
barra searchList: listaBiblioteca keys.
].

barra left: rectangleContainer left + 25 ; top: rectangleContainer top + 15.


rectangleContainer addMorph: barra.
