adding
addPanelAutores 
panelAutores := ScrolledText roundedWithSize: 200@210 color: theme contrast .
panelAutores  beReadOnly.
panelAutores  right:  rectangulo  right - 15; top: rectangulo top + 20.
panelAutores  wrapFlag: true.
panelAutores setText: 'Autores: '.

rectangulo addMorph: panelAutores.