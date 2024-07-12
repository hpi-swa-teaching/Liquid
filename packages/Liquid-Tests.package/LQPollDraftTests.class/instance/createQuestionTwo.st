helper methods
createQuestionTwo

	| question |
	question := LQMultiChoiceQuestion new.
	question
		title: 'Q3';
		choiceList: {
			LQChoice newFrom: 'Und ihre vorgeschriebne Reise Vollendet sie mit Donnergang  '.
			LQChoice newFrom: 'wapdapdabadibadawapdap  '.
			LQChoice newFrom: 'aaaa bbbbbbb aa aa sssss   '} asOrderedCollection.
	^ question