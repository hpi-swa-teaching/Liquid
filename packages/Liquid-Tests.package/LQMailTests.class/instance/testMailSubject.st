as yet unclassified
testMailSubject

	self mailDialog mailSubject: 'Mail Subject'.
	self assert: self mailDialog mailSubject equals: 'Mail Subject'.