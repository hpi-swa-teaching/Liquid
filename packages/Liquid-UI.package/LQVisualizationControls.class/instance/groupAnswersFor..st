accessing
groupAnswersFor: aQuestion

	| groups |
	groups := OrderedCollection new.
	self poll answerSets do: [:answerSet | | ans |
		ans := answerSet answers at: aQuestion id ifAbsent: [nil].
		ans ifNotNil: [self addAnswer: ans toGroups: groups]].
	^ groups