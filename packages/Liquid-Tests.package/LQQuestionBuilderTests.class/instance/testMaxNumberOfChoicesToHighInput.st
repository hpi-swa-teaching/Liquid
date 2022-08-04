testing
testMaxNumberOfChoicesToHighInput

	| testChoiceList |
	
	testChoiceList := {LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'}.
	self questionBuilder question choiceList: testChoiceList.
	self questionBuilder maxNumberOfChoices: '5' asText.
	self assert: self questionBuilder maxNumberOfChoices equals: '4'
	