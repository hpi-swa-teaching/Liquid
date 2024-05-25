helper methods
createQuestionOne

	^ LQMultChoiceQuestion new choiceList: { 
		LQChoice newFrom: 'Mary had a little lamb   '
		. LQChoice newFrom: 'bidabababadap         ' 
		. LQChoice newFrom: 'a b c d e f g h i j k l' } asOrderedCollection