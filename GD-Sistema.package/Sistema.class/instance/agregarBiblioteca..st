bibliotecas
agregarBiblioteca: biblio
(self existeBiblioteca: biblio) ifTrue: [ colBibliotecas := colBibliotecas add: biblio. ^ true ] ifFalse: [^ false ].
