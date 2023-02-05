adding
addBackground 

[
    |fondo |
self color: Color white.
fondo:=(Form fromFileNamed: 'C:\Users\Guille\Desktop\POO\backgroundPoo2.jpg') asMorph.
self extent: fondo extent .

	 
	self addMorphBack: fondo.
] on: FileDoesNotExistException  do: [ :ex |
    
	self extent: 800@600.
]
	