as yet unclassified
tablaBibliotecasInteres: aSize columns: columns 
usuario ifNotNil: [  
^ (Table aModel: (ModelBiblioteca aCollection: usuario bibliotecasInteres ) aColumns: columns extent: aSize)
 ]