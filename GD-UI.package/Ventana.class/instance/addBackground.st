adding
addBackground 

[
    |fondo |
self color: Color white.
fondo:=(Form fromFileNamed: 'C:\Users\Guille\Desktop\POO\background11.png') asMorph.
self extent: fondo extent .

	 
	self addMorphBack: fondo.
] on: FileDoesNotExistException  do: [ :ex |
    
	self extent: 800@600.
]
	