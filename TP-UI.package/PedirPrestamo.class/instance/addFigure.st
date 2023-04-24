adding
addFigure 
rectangulo  := Helper RoundedRectangleWithSize: 600@350 color: self colorBorderShapes  borderColor: self colorBorderShapes borderWidth: 5. 

rectangulo center: self center; position: rectangulo  position + (0@50).

self addMorph: rectangulo.
