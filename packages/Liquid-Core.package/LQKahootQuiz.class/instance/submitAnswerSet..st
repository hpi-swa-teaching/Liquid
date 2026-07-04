server compatibility
submitAnswerSet: anAnswerSet

	| participantName answer question |
	participantName := anAnswerSet token.
	anAnswerSet answers ifEmpty: [^ self].
	answer := anAnswerSet answers anyOne.
	question := self questionList detect: [:each | each id = answer questionId] ifNone: [^ self].
	(answer choicesRanking includes: question correctChoiceIndex) ifTrue: [ | currentScore |
		currentScore := self scores at: participantName ifAbsent: [0].
		self scores at: participantName put: currentScore + 1]