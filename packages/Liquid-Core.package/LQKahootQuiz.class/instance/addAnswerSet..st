server compatibility
addAnswerSet: anAnswerSet

	(anAnswerSet isKindOf: String) ifTrue: [
		self participants add: anAnswerSet.
		self scores at: anAnswerSet put: 0.
		self changed: #participants.
		^ self].
	
	(anAnswerSet isKindOf: LQAnswerSet) ifTrue: [
		| participantName answer question |
		participantName := anAnswerSet token.
		answer := anAnswerSet answers anyOne.
		question := self questionList
			detect: [:each | each id = answer questionId]
			ifNone: [^ self].
		(answer choicesRanking includes: question correctChoiceIndex) ifTrue: [
			| currentScore |
			currentScore := self scores at: participantName ifAbsent: [0].
			self scores at: participantName put: currentScore + 1].
		^ self]
