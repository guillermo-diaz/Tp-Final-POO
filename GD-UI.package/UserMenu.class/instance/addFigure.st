adding
addFigure 

rectangulo := Morph new.
rectangulo := Helper RoundedRectangleWithSize: 310@380 color: self colorShapesAndButtons  borderColor: self colorBorderShapesAndButtons.
rectangulo center: self center.
rectangulo position: rectangulo position + (175@56).
self addMorph: rectangulo .