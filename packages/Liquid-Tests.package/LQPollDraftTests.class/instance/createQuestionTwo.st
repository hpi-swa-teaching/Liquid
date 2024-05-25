helper methods
createQuestionTwo

	^ LQMultChoiceQuestion new choiceList: {
		LQChoice newFrom: 'Und ihre vorgeschriebne Reise Vollendet sie mit Donnergang  '
		. LQChoice newFrom: 'wapdapdabadibadawapdap  ' 
		.  LQChoice newFrom: 'aaaa bbbbbbb aa aa sssss   ' } asOrderedCollection
