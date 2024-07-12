accessing
getTextAnswers

	| answersWithSeparations separation |
	separation := '
-----------------------
	'.
	answersWithSeparations := ''.
	self poll answerSets do: [:answerSet | answersWithSeparations := answersWithSeparations, (answerSet answers at: (self poll pollDraft questionList at: self index) id) answer, separation].
	^ answersWithSeparations