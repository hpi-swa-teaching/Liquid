private
validateTargetIn: aPollDraft index: anIndex

	| previousQuestions |
	(anIndex isNil or: [anIndex = 0]) ifTrue: [
		UIManager default inform: 'Please select a question first.'.
		^ false].
	previousQuestions := aPollDraft questionList copyFrom: 1 to: anIndex - 1.
	previousQuestions isEmpty ifTrue: [
		UIManager default inform: 'There are no previous questions to depend on.
The first question cannot have a condition.'.
		^ false].
	^ true