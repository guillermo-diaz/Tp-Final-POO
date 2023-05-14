adding
addTable 
sistemaGestor ifNotNil: [  
|bibliotecas|  
bibliotecas := sistemaGestor colBibliotecas.

tableBibliotecas := Table aModel: (ModelBiblioteca aCollection: bibliotecas) aColumns: #('Nombre' 'Dirección' 'Teléfono' 'Representante') asOrderedCollection extent: 540@275.
tableBibliotecas headerColor: self colorShapes.

tableBibliotecas left: rectangulo left + 30; top: rectangulo top +35.
rectangulo addMorph: tableBibliotecas.

tableBibliotecas setClick: [:index | 
	biblioteca  := (tableBibliotecas elementAt: index).
	 ]
]

