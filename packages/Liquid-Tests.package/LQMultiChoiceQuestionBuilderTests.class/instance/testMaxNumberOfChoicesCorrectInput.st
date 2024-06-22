testing
testMaxNumberOfChoicesCorrectInput

	| testChoiceList |

	testChoiceList := {LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'.LQChoice newFrom: 'a'}.
	self questionBuilder question choiceList: testChoiceList.
	self questionBuilder maxNumberOfChoices: '3' asText.
	self assert: self questionBuilder maxNumberOfChoices equals: '3'
	