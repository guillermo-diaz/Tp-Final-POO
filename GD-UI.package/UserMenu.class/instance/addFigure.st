adding
addFigure 

rectangulo := Morph new.
	rectangulo  color: self colorShapesAndButtons ; borderWidth: 4; borderColor: self colorBorderShapesAndButtons .
	rectangulo extent: 310@380.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (175@56).
	self addMorph: rectangulo .