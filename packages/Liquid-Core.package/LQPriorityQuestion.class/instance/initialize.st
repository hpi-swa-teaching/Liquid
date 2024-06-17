initialize-release
initialize
	super initialize.
	self choiceList: OrderedCollection new.
	self numberOfChoices: self choiceList size