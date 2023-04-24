adding
addTitles 
|dobleClick|
dobleClick := StringMorph contents: 'Doble click para solicitar un prestamo' font: (Helper getFontWithSize: 10.5) forceBold. 

dobleClick left: rectangulo left + 25; top: rectangulo top + 20.

rectangulo addMorph: dobleClick.
