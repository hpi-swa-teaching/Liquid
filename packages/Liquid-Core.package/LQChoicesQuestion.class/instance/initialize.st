initialize
initialize

	super initialize.
	self id: UUID new asString.
	choiceList := OrderedCollection new.
	maxNumberOfChoices := 1