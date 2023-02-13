adding
addContainerRectangle 
rectangleContainer := Morph new extent: 400@350.
rectangleContainer color: self colorShapesAndButtons;borderWidth: 4; borderStyle: self getBorderStyle. 

rectangleContainer center: self center; position: rectangleContainer position + (0@50).


self addMorph: rectangleContainer.
