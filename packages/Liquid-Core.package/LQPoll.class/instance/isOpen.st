accessing
isOpen
	
	isOpen ifFalse: [ ^ false ].
	(self pollDraft notNil and: [self pollDraft deadline notNil]) ifTrue: [
		^ DateAndTime now <= self pollDraft deadline
	].
	^ true