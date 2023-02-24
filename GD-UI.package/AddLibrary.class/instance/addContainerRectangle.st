adding
addContainerRectangle 
rectangleContainer := Helper RoundedRectangleWithSize: 600@350 color: self colorShapes  borderColor: self colorBorderShapes . 

rectangleContainer center: self center; position: rectangleContainer position + (0@50).


self addMorph: rectangleContainer.
