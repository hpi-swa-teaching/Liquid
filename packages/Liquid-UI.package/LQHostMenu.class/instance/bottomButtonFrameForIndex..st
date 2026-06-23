toolbuilder
bottomButtonFrameForIndex: anInteger
	| safeTotal maxPerRow zeroBasedIndex col row actualCols totalRows buttonWidth rowHeight topStart bottomEnd leftStart |
	
	safeTotal := self numberOfBottomButtons max: 1.
	maxPerRow := self maxButtonsPerRow max: 1.
	
	zeroBasedIndex := anInteger - 1.
	col := zeroBasedIndex \\ maxPerRow.
	row := zeroBasedIndex // maxPerRow.
	
	actualCols := safeTotal min: maxPerRow.
	totalRows := ((safeTotal - 1) // maxPerRow) + 1.
	
	buttonWidth := 1.0 / actualCols.
	"Die verfügbaren 25 % Höhe (0.75 bis 1.0) werden exakt durch die Zeilenanzahl geteilt:"
	rowHeight := 0.25 / totalRows.
	
	leftStart := col * buttonWidth.
	topStart := 0.75 + (row * rowHeight).
	bottomEnd := topStart + rowHeight.
	
	^ self frame: bottomEnd fromTop: topStart fromLeft: leftStart width: buttonWidth