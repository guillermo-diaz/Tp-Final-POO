initialization
addBackground 
	|fondo rectangulo col|
fondo:=(Form fromFileNamed: 'C:\Users\Guille\Desktop\POO\background10.png') asMorph.
self extent: fondo extent .
	self addMorphBack: fondo.
	 
	
	rectangulo  :=Morph new.
	rectangulo  color: (Color r: 193 g: 193 b: 193) ; borderWidth: 4; borderColor: Color gray.
	rectangulo extent: 275@350.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@50).
	self addMorph: rectangulo .
	





