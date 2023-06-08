as yet unclassified
elegirLibros: colPosiciones colLibros: colLibros
|libros|
libros := OrderedCollection new.
colPosiciones do: [ :i| libros add: (colLibros at: i) ].
^ libros 
