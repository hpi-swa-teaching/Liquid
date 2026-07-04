server compatibility
addAnswerSet: anObject

	(anObject isKindOf: String) ifTrue: [^ self registerParticipantName: anObject].
	
	(anObject isKindOf: LQAnswerSet) ifTrue: [^ self submitAnswerSet: anObject]