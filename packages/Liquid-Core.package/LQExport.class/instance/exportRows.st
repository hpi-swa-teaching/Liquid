printing
exportRows

	| questionIds rows |
	questionIds := poll questionList collect: [:question | question id].
	rows := OrderedCollection new.
	rows add: (poll questionList collect: [:question | question title]).
	poll answerSets do: [:answerSet | rows add: (answerSet exportFieldsFor: questionIds)].
	^ rows