supporting
pickChoiceFromCurrentQuestion

	| builder choices pick |
	builder := self questionBuilders at: self currentQuestion ifAbsent: [
		UIManager default inform: 'Add a question first'.
		^ nil].
	choices := builder question choiceList.
	choices isEmpty ifTrue: [
		UIManager default inform: 'Add a choice first'.
		^ nil].
	pick := UIManager default
		chooseFrom: (choices collect: [:each | each description]) asOrderedCollection
		title: 'Restrict which choice?'.
	pick = 0 ifTrue: [^ nil].
	^ choices at: pick