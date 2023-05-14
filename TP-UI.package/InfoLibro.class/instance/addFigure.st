adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 750@380 color: self colorBorderShapes  borderColor: self colorBorderShapes.

rectangulo left: self left + 25; bottom: self bottom - 60.

self addMorph: rectangulo.