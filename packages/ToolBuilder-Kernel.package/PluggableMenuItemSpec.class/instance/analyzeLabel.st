initialize
analyzeLabel
	"For Morphic compatiblity. Some labels include markup such as <on>, <off> etc.
	Analyze the label for these annotations and take appropriate action."
	| marker |
	marker := label copyFrom: 1 to: (label indexOf: $>).
	(marker = '<on>' or:[marker = '<yes>']) ifTrue:[
		checkable := true.
		checked := true.
		label := label copyFrom: marker size+1 to: label size.
	].
	(marker = '<off>' or:[marker = '<no>']) ifTrue:[
		checkable := true.
		checked := false.
		label := label copyFrom: marker size+1 to: label size.
	].
