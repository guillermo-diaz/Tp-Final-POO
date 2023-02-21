adding
addFigure 
rectangulo := Morph new.

rectangulo := Helper RoundedRectangleWithSize: 300@430 color: self colorShapesAndButtons  borderColor: self colorBorderShapesAndButtons borderWidth: 4.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@65).
	self addMorph: rectangulo .