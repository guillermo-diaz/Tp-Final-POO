adding
addIcon 
[ 
	    |icon |
	
		icon := (Form fromFileNamed: (theme icon)) asMorph.
		self addMorph: icon.
		icon center: rectangulo center.
		icon position: icon position - (0@100).
		
]on: FileDoesNotExistException  do: [ :ex |
    	| circle head body |
circle := EllipseMorph new extent: 130@130.
circle color: Color veryDarkGray lighter lighter; borderWidth: 3.

head := EllipseMorph new extent: 50@50; color: Color black.
head center: circle center.
head position: head position - (0@20).
circle addMorph: head.

body := EllipseMorph new extent: 80@35; color: Color black.
body center: circle center.
body position: body position + (0@30).
circle addMorph: body.
	
	
	
	circle center: rectangulo  center.
	circle position: circle position - (0@100).
	self addMorph: circle.
	
]