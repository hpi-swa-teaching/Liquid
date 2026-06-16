accessing
itemAlignments: someSymbols
	"For convenience, map #left and #right to their correct values. At least for Morphic."

	itemAlignments := someSymbols collect: [:alignment |
		alignment == #left ifTrue: [#leftCenter] ifFalse: [
		alignment == #right ifTrue: [#rightCenter] ifFalse: [
		alignment]]].