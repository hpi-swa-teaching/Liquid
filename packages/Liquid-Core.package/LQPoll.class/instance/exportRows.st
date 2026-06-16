printing
exportRows

	| questionIds rows |
	questionIds := self questionList collect: [:question | question id].
	rows := OrderedCollection new.
	rows add: (self questionList collect: [:question | question title]).
	self answerSets do: [:answerSet | rows add: (answerSet exportFieldsFor: questionIds)].
	^ rows