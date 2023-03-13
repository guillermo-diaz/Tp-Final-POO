initialization
initialize 
super initialize.
self color: Color transparent; addFigure ; addIcon; addButtons; addTitles; addInfo. 

usuario ifNotNil: [  
(usuario esPlus) ifTrue: [ self addPlus ]]
