accessing
itemAlignments
	"For each column, define the alignment of each list item in its layout cell. The value can encode both horizontal and vertical dimensions."
	
	^ itemAlignments ifNil: [self itemAlignment ifNil: [#()] ifNotNil: [:alignment | {alignment}]]