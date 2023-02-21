adding
addContainerRectangle 
rectangleContainer := Morph new extent: 400@350.
rectangleContainer := Helper RoundedRectangleWithSize: 400@350 color: self colorShapesAndButtons  borderColor: self colorBorderShapesAndButtons . 

rectangleContainer center: self center; position: rectangleContainer position + (0@50).


self addMorph: rectangleContainer.
