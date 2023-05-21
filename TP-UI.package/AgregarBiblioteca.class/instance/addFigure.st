adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 300@430 color: self colorShapes  borderColor: self colorBorderShapes borderWidth: 4.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@65).
	self addMorph: rectangulo .