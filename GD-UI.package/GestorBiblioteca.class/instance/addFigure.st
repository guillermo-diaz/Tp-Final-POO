adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 275@350 color: self colorShapesAndButtons  borderColor: self colorBorderShapesAndButtons borderWidth: 4.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@50).
	self addMorph: rectangulo .
	