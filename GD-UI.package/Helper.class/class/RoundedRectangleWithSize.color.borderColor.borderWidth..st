as yet unclassified
RoundedRectangleWithSize: size color: col borderColor: bordeColor borderWidth: bWidth
^ (Morph new) extent: size; color: col; borderStyle: (self getBorderStyle: bordeColor width: bWidth) 