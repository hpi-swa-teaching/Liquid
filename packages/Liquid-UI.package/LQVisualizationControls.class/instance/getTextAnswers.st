accessing
getTextAnswers

	| answersWithSeparations separation question |
	separation := '<n>----------------------------<n>' expandMacros.
	answersWithSeparations := ''.
	question := self poll pollDraft questionList at: self index ifAbsent: [^ ''].
	(self groupAnswersFor: question) do: [:group |
		answersWithSeparations := answersWithSeparations, (self
			formatAnswer: group first
			forQuestion: question
			seperation: separation
			count: group second)].
	^ answersWithSeparations