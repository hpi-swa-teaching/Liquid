testing
testMaxNumberOfChoicesCorrectInput

	self questionBuilder question choiceList: {LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'}.
	self questionBuilder maxNumberOfChoices: '3' asText.
	self assert: self questionBuilder maxNumberOfChoices equals: '3'
	