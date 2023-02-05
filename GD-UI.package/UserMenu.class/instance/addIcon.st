adding
addIcon 
[ 
	    |icon |
	
		icon := (Form fromFileNamed: 'C:\Users\Guille\Desktop\POO\iconUI3.png') asMorph.
		self addMorph: icon.
		icon center: rectangulo center.
		icon position: icon position - (0@100).
		
]on: FileDoesNotExistException  do: [ :ex |
    	|circle| 
	circle := EllipseMorph new extent: 130@130.
	circle center: rectangulo  center.
	circle position: circle position - (0@100).
	self addMorph: circle.
]