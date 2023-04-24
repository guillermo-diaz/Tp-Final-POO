adding
addPlus 
	|morph rect1 rect2|
	morph := EllipseMorph  new.
	morph extent: 60@60; borderWidth: 0; color: Color transparent . 
	rect1 := Morph new
				color: Color green;
				extent: 15@40.
	rect2 := Morph new
				color: Color green;
				extent: 40@15.
	morph addMorph: rect1.
	morph addMorph: rect2.
	rect1 center: morph center.
	rect2 center: rect1 center.
	
	morph center: rectangulo center.
	morph position: morph position - (-40@145).
	self addMorph: morph. 
	