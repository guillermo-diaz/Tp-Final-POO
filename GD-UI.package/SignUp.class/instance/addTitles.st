adding
addTitles 
|title1 title2 title3 title4 title5 font col| 
col := OrderedCollection new.
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11).
title1 := StringMorph contents: 'Nombre'.
title2 := StringMorph contents: 'Apellido'.
title3 := StringMorph contents: 'Dni'.
title4 := StringMorph contents: 'Contraseña'. 
title5 := StringMorph contents: '¿Desea ser plus?'.
col add: title1; add: title2; add: title3; add: title4; add: title5.

title1 center: nombre center.
title2 center: apellido center.
title3 center: dni center.
title4 center: contraseña center.


col do: [ :title| title position: title position - (0@25) ].
col do: [ :title| title font: font ].
title5 position: plus position - (0@20).

self addMorph: title1; addMorph: title2; addMorph: title3;addMorph: title4;addMorph: title5.