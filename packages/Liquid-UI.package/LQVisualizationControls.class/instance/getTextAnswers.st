accessing
getTextAnswers

	| answersWithSeparations separation question |
	separation := '
----------------------------
	'.
	answersWithSeparations := ''.
	question := self poll pollDraft questionList at: self index ifAbsent: [^ ''].
	self poll answerSets do: [:answerSet |
		| ans submittedOnOriginalMarker |
		submittedOnOriginalMarker := ''.
		ans := answerSet answers at: question id ifAbsent: [nil].
		(ans wasSubmittedOnOriginalQuestion) ifTrue: [
			(question wasEdited) ifTrue: [
				submittedOnOriginalMarker := ' (Answered before question was edited.)'
			]
		].
		ans ifNotNil: [
			answersWithSeparations := answersWithSeparations , ans answer,  submittedOnOriginalMarker, separation]].
	^ answersWithSeparations