testing
testMaxNumberOfChoicesBadInput

	| testChoiceList |
	
	testChoiceList := {LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'}.
	self questionBuilder question choiceList: testChoiceList.
	self questionBuilder maxNumberOfChoices: 'üiebtr' asText.
	self assert: self questionBuilder maxNumberOfChoices equals: '1'
	