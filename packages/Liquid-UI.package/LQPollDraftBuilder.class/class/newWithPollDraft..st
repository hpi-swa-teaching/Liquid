instance creation
newWithPollDraft: aLQPollDraft

	| aPollDraftBuilder questionBuilders |
	aPollDraftBuilder := self new.
	aPollDraftBuilder pollDraft: aLQPollDraft.
	aPollDraftBuilder questionBuilders removeAll.
	questionBuilders := aLQPollDraft questionList collect: [:currentQuestion | | questionBuilder |
		currentQuestion isMultiChoiceQuestion ifTrue: [questionBuilder := LQMultiChoiceQuestionBuilder new].
		currentQuestion isPriorityQuestion ifTrue: [questionBuilder := LQPriorityQuestionBuilder new].
		currentQuestion isFreeTextQuestion ifTrue: [questionBuilder := LQFreeTextQuestionBuilder new].
		questionBuilder question: currentQuestion.
		questionBuilder].
	aPollDraftBuilder questionBuilders addAll: questionBuilders.
	^ aPollDraftBuilder