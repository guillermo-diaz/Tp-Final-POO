initialization
initializeColumns: colColumns model: model 

self initialize.
colColumns do: [:name | self addColumn: (FTColumn id: name)].
self intercellSpacing: 1;
beResizable;
vResizing: #spaceFill; hResizing: #spaceFill; dataSource: model

			.
