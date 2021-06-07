as yet unclassified
choiceAt: anIndex put: aBoolean
	selectedChoices := selectedChoices
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self choiceList at: anIndex ifAbsent: [ ^ self ]).
	self changed: #choiceSelected.