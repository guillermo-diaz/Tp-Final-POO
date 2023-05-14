adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 280@380 color: self colorBorderShapes  borderColor: self colorBorderShapes.

rectangulo left: self left + 110; bottom: self bottom - 60.

self addMorph: rectangulo.