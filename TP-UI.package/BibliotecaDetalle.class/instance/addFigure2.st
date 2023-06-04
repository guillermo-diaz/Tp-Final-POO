adding
addFigure2 
containerInfo  := Helper RoundedRectangleWithSize: 310@300 color: self colorShapes  borderColor: self colorBorderShapes  borderWidth: 4 .


containerInfo right: self right - 50; bottom: self bottom - 100.

self addMorph: containerInfo .