adding
addTitles 
|title1 title2 font|
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 12).
title1 := StringMorph contents: 'DNI'. 
title2 := StringMorph contents: 'Contraseña'.
title1 font: (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11)..
title2 font: font.

title1 position: inDni center - (10@40).
title2 center: inContra center.
title2 position: title2 position -(0@30).
 
self addMorph: title1 ; addMorph: title2.