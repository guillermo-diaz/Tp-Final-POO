adding
addPanelLibros 
panelLibros := ScrolledText roundedWithSize: 400@170 color: theme contrast .
panelLibros beReadOnly; setText: 'Libros del prestamo:'; left:  rectangulo  left + 15; bottom: rectangulo bottom - 15; wrapFlag: true.

self addMorph: panelLibros .