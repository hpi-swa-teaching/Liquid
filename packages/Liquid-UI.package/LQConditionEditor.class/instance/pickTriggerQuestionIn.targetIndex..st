private
pickTriggerQuestionIn: aPollDraft targetIndex: anIndex

	| currentQ previousQuestions questionTitles pickedIndex |
	currentQ := aPollDraft questionList at: anIndex.
	previousQuestions := aPollDraft questionList copyFrom: 1 to: anIndex - 1.
	questionTitles := previousQuestions collect: [:q | q title].
	pickedIndex := UIManager default
		chooseFrom: questionTitles asOrderedCollection
		title: 'Show "' , currentQ title , '" only if...'.
	pickedIndex = 0 ifTrue: [^ nil].
	^ previousQuestions at: pickedIndex