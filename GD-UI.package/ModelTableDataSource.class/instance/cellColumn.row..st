initialization
cellColumn: columnIndex row: rowIndex
    ^ FTCellMorph new
		cellInset: 5;
		addMorph: (self getString: (self elementAt: rowIndex) at: columnIndex id) asMorph
		