adding
addFigure 
rectangulo := Morph new.
	rectangulo  color: self colorShapesAndButtons ; borderWidth: 4; borderColor: self colorBorderShapesAndButtons; borderStyle: self getBorderStyle.
	rectangulo extent: 300@430.
	rectangulo center: self center.
	rectangulo position: rectangulo position + (0@65).
	self addMorph: rectangulo .