accessing
maxNumberOfChoices
	self question maxNumberOfChoices ifNil: [^ ''].
	^ self question maxNumberOfChoices asString