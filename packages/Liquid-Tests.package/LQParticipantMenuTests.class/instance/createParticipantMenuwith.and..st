helper methods
createParticipantMenuwith: anAnswerSet and: aPoll

	^ LQParticipantMenu new
		poll: aPoll;
		answerSet: anAnswerSet;
		yourself