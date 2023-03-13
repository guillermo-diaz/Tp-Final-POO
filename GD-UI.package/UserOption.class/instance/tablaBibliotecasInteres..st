as yet unclassified
tablaBibliotecasInteres: aSize 
usuario ifNotNil: [  
^ (Table aModel: (ModelBiblioteca aCollection: usuario bibliotecasInteres ) aColumns: #('Nombre' 'Dirección' 'Teléfono' 'Representante') asOrderedCollection  extent: aSize). 
 ]