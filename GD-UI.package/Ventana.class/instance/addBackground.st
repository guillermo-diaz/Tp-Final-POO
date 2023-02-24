adding
addBackground 

[
    |fondo |
self color: Color white.
fondo:=(Form fromFileNamed: 'pharo-local/iceberg/Tp-Final-POO/resources/background3.jpg') asMorph.
fondo center: self center.
	 
	self addMorphBack: fondo.
] on: FileDoesNotExistException  do: [ :ex |
   self color: Color white.
	
]
	