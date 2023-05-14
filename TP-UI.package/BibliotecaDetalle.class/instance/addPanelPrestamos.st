adding
addPanelPrestamos  
panelPrestamos  := ScrolledText roundedWithSize: 250@330 color: theme contrast .
panelPrestamos  beReadOnly.
panelPrestamos  right:  rectangulo  right - 15; bottom: rectangulo bottom - 15.
panelPrestamos  wrapFlag: true.




self addMorph: panelPrestamos .

biblioteca ifNotNil:[
	|txt| 
	txt := ''.
	
	(biblioteca colPrestamos) do: [ :pres| txt := txt, pres toString, '\\' withCRs.].
	panelPrestamos setText: txt.
	].