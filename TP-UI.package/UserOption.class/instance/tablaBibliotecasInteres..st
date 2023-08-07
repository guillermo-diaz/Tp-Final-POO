as yet unclassified
tablaBibliotecasInteres: aSize 
usuario ifNotNil: [  
	|b t|
	b := usuario bibliotecasInteres.
	t := (Table aModel: (ModelBiblioteca aObject: usuario withCollection: b) aColumns: #('Nombre' 'Dirección' 'Teléfono' 'Representante') asOrderedCollection  extent: aSize).
	
	
	^ t  
 ]