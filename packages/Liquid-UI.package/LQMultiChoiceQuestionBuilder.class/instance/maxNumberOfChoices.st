accessing
maxNumberOfChoices

	self question maxNumberOfChoices ifNil: [^ '1'].
	^ self question maxNumberOfChoices asString