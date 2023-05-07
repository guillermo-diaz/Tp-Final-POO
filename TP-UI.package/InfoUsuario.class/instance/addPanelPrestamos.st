adding
addPanelPrestamos 
| txt| 
containerPrestamos  := Helper RoundedRectangleWithSize: 500@350 color: self colorBorderShapes  borderColor: self colorBorderShapes.
panelPrestamos := ScrolledText roundedWithSize: 275@300 color: theme contrast.
panelPrestamos beReadOnly.
panelPrestamos wrapFlag: true.
panelPrestamos setText: 'Información de Prestamos'.
txt := StringMorph contents: 'Prestamos' font: ((Helper getFontWithSize: 10.5) forceBold).

containerPrestamos right: panelUser left - 20; bottom: panelUser bottom - 15.
panelPrestamos right: containerPrestamos right - 20; bottom: containerPrestamos bottom - 15.
txt center: panelPrestamos center; bottom: panelPrestamos top - 10.

containerPrestamos  addMorph: txt.
containerPrestamos  addMorph: panelPrestamos.

self addMorph: containerPrestamos .
