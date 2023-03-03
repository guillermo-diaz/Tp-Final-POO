adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 300@300 color: self colorShapes  borderColor:  self colorBorderShapes  borderWidth: 2.

rectangulo center: self center; position: rectangulo  position + (0@50).

self addMorph: rectangulo.
