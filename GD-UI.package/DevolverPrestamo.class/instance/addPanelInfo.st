adding
addPanelInfo 
panelInfo := ScrolledText roundedWithSize: 275@240 color: theme contrast .
panelInfo beReadOnly.
panelInfo setText: 'Información de Prestamos'.
panelInfo right:  rectangulo  right - 40; top: rectangulo top + 30.

self addMorph: panelInfo.