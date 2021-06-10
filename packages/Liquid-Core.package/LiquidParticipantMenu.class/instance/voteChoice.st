interaction
voteChoice
	"This is for single-choice only"
	| answer |
	(self votedChoiceList isEmpty) 
	ifFalse: [self votedChoiceList at: 1 put: self selectedItemChoice.]
	ifTrue: [self votedChoiceList add: self selectedItemChoice].
	self changed: #votedChoiceList.
	answer := (self pollAnswer answers at: (self selectedItemQuestion id) ifAbsentPut: LiquidSingleChoiceAnswer new).
	answer votedChoice: self selectedItemChoice.