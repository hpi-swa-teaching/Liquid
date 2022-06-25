testing
testMaxNumberOfChoicesBadInput

	self questionBuilder question choiceList: {LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'}.
	self questionBuilder maxNumberOfChoices: 'üiebtr' asText.
	self assert: self questionBuilder maxNumberOfChoices equals: '1'
	