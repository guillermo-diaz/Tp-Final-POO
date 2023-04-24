adding
addFigure 

rectangulo := Morph new.
rectangulo := Helper RoundedRectangleWithSize: 310@380 color: self colorShapes  borderColor: self colorBorderShapes.
rectangulo center: self center.
rectangulo position: rectangulo position + (175@56).
self addMorph: rectangulo .