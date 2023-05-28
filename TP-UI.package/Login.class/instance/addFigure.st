adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 280@350 color: self colorShapes  borderColor: self colorBorderShapes borderWidth: 4.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@50).
	self addMorph: rectangulo .
	