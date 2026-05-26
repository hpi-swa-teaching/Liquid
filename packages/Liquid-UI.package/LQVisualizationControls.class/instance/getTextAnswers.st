accessing
getTextAnswers

	| answersWithSeparations separation question |
	separation := '
-----------------------
	'.
	answersWithSeparations := ''.
	question := self poll pollDraft questionList at: self index ifAbsent: [^ ''].
	self poll answerSets do: [:answerSet |
		| ans |
		ans := answerSet answers at: question id ifAbsent: [nil].
		ans ifNotNil: [
			answersWithSeparations := answersWithSeparations , ans answer , separation]].
	^ answersWithSeparations