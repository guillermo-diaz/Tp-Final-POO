initialization
initialize 
super initialize.
self addFigure ; addIcon; addButtons; addTitles; addInfo. 

usuario ifNotNil: [  
(usuario esPlus) ifTrue: [ self addPlus ]]
