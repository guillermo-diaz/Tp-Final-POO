adding
addBackground 

[
    |fondo |
self color: Color white.
fondo:=(Form fromFileNamed: 'pharo-local/iceberg/Tp-Final-POO/resources/background.jpg') asMorph.
self extent: fondo extent .

	 
	self addMorphBack: fondo.
] on: FileDoesNotExistException  do: [ :ex |
    
	self extent: 800@600.
]
	