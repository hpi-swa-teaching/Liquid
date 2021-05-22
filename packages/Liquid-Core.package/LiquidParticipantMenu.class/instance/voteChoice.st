accessing
voteChoice
	"This is for single-choice only"
	| answer |
	"Adapt this to work with the size of the votedChoiceList as well as a possible maxChoices-entry in the question"
	(self votedChoiceList isEmpty) 
	ifFalse: [self votedChoiceList at: 1 put: self selectedItemChoice.]
	ifTrue: [self votedChoiceList add: self selectedItemChoice].
	self changed: #votedChoiceList.
	answer := (pollAnswer answers at: (selectedItemQuestion id) ifAbsentPut: LiquidSingleChoiceAnswer new).
	answer votedChoice: self selectedItemChoice.