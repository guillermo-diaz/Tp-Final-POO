initialization
addBackground 

	| fondo imagen|
	fondo := Form fromFileNamed: 'C:\Users\Guille\Desktop\POO\background6.png'.
imagen := ImageMorph new
									form: fondo;
									extent: fondo extent.
self extent: fondo extent + (2@2); borderWidth: 1.
self addMorphCentered: imagen.




