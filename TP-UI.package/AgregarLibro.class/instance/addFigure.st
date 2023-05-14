adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 500@290 color: self colorBorderShapes  borderColor: self colorBorderShapes.

rectangulo center: self center; bottom: self bottom - 100.

self addMorph: rectangulo.