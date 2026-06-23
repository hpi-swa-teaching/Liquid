accessing
question: aQuestion
	
	self isInLiveEditMode ifTrue: [self question wasEdited: true].
	question := aQuestion