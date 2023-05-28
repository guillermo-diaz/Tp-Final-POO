as yet unclassified
libroIcon 
| libroMorph  pag1 pag2  raya1 raya2 container|
container := Morph new extent: 22@15; color: Color transparent.
libroMorph := Morph new extent: 14@15; color: (Color fromString: '2330AA').
libroMorph left: container left; bottom: container bottom.
libroMorph borderStyle: (Helper getBorderStyle: libroMorph color width: 1 radius: 1) .
pag1 := Morph new extent: 13@1; color: Color lightGray.
pag2 := Morph new extent: 13@1; color: Color white.
raya1 := Morph new extent: 8@1; color: Color white.
raya2 := Morph new extent: 8@1; color: Color white.

raya1 left: libroMorph left +3; top: libroMorph top + 2.
raya2 left: libroMorph left +3; top: libroMorph top + 4.
pag1 bottom: libroMorph bottom - 2; left: libroMorph left + 1.
pag2 bottom: libroMorph bottom - 1; left: libroMorph left + 1.

libroMorph addMorph: pag1; addMorph: pag2.
libroMorph addMorph: raya1 ; addMorph: raya2.
container addMorph: libroMorph.

^container