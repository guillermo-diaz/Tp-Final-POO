adding
addTitles 
|title1 title2 title3 title4 textStyle strikeFont| 
title1 := TextMorph new. 
title1 contents: 'Nombre'.
title1 position: nombre position - (0@25). 
title2 := StringMorph contents: 'Apellido'.
title2 position: apellido position - (0@25).
title1 extent: 400@100.
strikeFont := StrikeFont familyName: 'Calibri' size: 30.

"set the font of the text morph to the text style"
title1 font: strikeFont .
self addMorph: title1; addMorph: title2.