adding
addFigure 
rectangulo  := Helper RoundedRectangleWithSize: 600@370 color: self colorBorderShapes  borderColor: self colorBorderShapes borderWidth: 5. 
rectangulo left: self left + 100; bottom: self bottom - 60.

self addMorph: rectangulo.