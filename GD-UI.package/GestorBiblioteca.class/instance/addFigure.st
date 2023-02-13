adding
addFigure 

rectangulo := Morph new.
	rectangulo  color: self colorShapesAndButtons ; borderWidth: 4; borderColor: self colorBorderShapesAndButtons; borderStyle: (self getBorderStyle: (self colorBorderShapesAndButtons)).
	rectangulo extent: 275@350.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@50).
	self addMorph: rectangulo .
	