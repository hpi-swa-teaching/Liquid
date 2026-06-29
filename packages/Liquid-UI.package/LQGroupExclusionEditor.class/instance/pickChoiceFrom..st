private
pickChoiceFrom: aQuestionBuilder

	| choices pick |
	aQuestionBuilder ifNil: [
		UIManager default inform: 'Add a question first'.
		^ nil].
	choices := aQuestionBuilder question choiceList.
	choices isEmpty ifTrue: [
		UIManager default inform: 'Add a choice first'.
		^ nil].
	pick := UIManager default
		chooseFrom: (choices collect: [:each | each description]) asOrderedCollection
		title: 'Restrict which choice?'.
	pick = 0 ifTrue: [^ nil].
	^ choices at: pick