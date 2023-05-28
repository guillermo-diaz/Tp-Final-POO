adding
addPlus 
	|rect1 rect2|
	plus := EllipseMorph  new.
	plus extent: 60@60; borderWidth: 0; color: Color transparent . 
	rect1 := Morph new
				color: Color green;
				extent: 15@40.
	rect2 := Morph new
				color: Color green;
				extent: 40@15.
	plus addMorph: rect1.
	plus addMorph: rect2.
	rect1 center: plus center.
	rect2 center: rect1 center.
	
	plus right: panelUser right - 35; top: panelUser top + 5.
	self addMorph: plus.
	flagPlus := true.
 