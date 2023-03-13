adding
addContainerRectangle 
rectangleContainer := Helper RoundedRectangleWithSize: 600@350 color: self colorBorderShapes  borderColor: self colorBorderShapes borderWidth: 5. 

rectangleContainer center: self center; position: rectangleContainer position + (0@50).


self addMorph: rectangleContainer.
