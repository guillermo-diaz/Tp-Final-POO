initialization
addBackground 
	|fondo|
fondo:=(Form fromFileNamed: 'C:\Users\Guille\Desktop\POO\background10.png') asMorph.
self extent: fondo extent .
	self addMorphBack: fondo.





