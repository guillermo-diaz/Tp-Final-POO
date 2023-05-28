adding
addFigure 
rectangulo := Helper RoundedRectangleWithSize: 660@400 color: self colorBorderShapes borderColor: self colorBorderShapes.

rectangulo bottom: self bottom - 50; left: self left + 70.

self addMorph: rectangulo .