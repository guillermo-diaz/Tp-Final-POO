adding
addFigure 

rectangulo := Morph new.
	rectangulo  color: (Color r: 193 g: 193 b: 193) ; borderWidth: 4; borderColor: Color gray.
	rectangulo extent: 275@350.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@50).
	self addMorph: rectangulo .
	