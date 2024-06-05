instance creation
openWithPollDraft: aLQPollDraft 
	| aPollDraftBuilder |
	aPollDraftBuilder := self new. 
	aPollDraftBuilder pollDraft: aLQPollDraft.
	aPollDraftBuilder questionBuilders removeAll.
	1
		to: aLQPollDraft questionList size
		do: [:i | 
			| question |
			question := LQQuestionBuilder new.
			question
				question: (aLQPollDraft questionList at: i).
			aPollDraftBuilder questionBuilders add: question].
	ToolBuilder open: aPollDraftBuilder