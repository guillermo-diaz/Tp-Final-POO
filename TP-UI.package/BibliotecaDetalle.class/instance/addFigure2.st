adding
addFigure2 
containerInfo  := Helper RoundedRectangleWithSize: 250@300 color: self colorShapes  borderColor: self colorBorderShapes .


containerInfo right: self right - 110; bottom: self bottom - 100.

self addMorph: containerInfo .