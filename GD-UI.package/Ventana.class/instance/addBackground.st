adding
addBackground 

[
    |fondo |
self color: Color white.
fondo:=(Form fromFileNamed: theme background) asMorph.
fondo center: self center.
	 
	self addMorphBack: fondo.
] on: FileDoesNotExistException  do: [ :ex |
   self color: Color white.
	
]
	