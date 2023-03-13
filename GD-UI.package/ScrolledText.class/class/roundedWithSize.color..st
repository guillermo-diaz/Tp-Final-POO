truncation and round off
roundedWithSize: aSize color: col
^ (self new) extent: aSize; color: col; borderStyle: (Helper getBorderStyle: col width: 2)