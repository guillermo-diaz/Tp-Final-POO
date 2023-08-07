bibliotecas
agregarBiblioteca: biblio
(self existeBiblioteca: biblio) ifFalse:  [colBibliotecas add: biblio.
	self changed: colBibliotecas.
	 ^ true ].

^ false
