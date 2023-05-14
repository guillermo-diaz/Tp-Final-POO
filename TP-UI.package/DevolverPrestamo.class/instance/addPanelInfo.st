adding
addPanelInfo 
panelInfo := ScrolledText roundedWithSize: 305@250 color: theme contrast .
panelInfo beReadOnly.
panelInfo setText: 'Información de Prestamos'.
panelInfo right:  rectangulo  right - 30; top: rectangulo top + 30.
panelInfo wrapFlag: true.

self addMorph: panelInfo.