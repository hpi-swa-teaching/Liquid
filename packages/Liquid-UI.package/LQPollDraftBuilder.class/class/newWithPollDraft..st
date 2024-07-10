instance creation
newWithPollDraft: aLQPollDraft 
	| aPollDraftBuilder |
	aPollDraftBuilder := self new.
	aPollDraftBuilder pollDraft: aLQPollDraft.
	aPollDraftBuilder questionBuilders removeAll.
	aLQPollDraft questionList
		do: [:currentQuestion |  
			| questionBuilder |
			currentQuestion isMultiChoiceQuestion
				ifTrue: [questionBuilder := LQMultiChoiceQuestionBuilder new].
			currentQuestion isPriorityQuestion
				ifTrue: [questionBuilder := LQPriorityQuestionBuilder new].
			currentQuestion isFreeTextQuestion
				ifTrue: [questionBuilder := LQFreeTextQuestionBuilder new].
			questionBuilder question: currentQuestion.
			aPollDraftBuilder questionBuilders add: questionBuilder].
	^ aPollDraftBuilder