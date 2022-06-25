testing
testMaxNumberOfChoicesToHighInput

	self questionBuilder question choiceList: {LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'}.
	self questionBuilder maxNumberOfChoices: '5' asText.
	self assert: self questionBuilder maxNumberOfChoices equals: '4'
	