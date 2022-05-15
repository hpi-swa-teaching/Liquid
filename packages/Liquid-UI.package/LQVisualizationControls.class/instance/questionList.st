accessing
questionList

	^ self poll pollDraft questionList collect: [:question | question title]