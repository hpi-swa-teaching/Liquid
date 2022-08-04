anti-cheat
isAnswer: answer From: aUser ValidForQuestionId: questionid InPoll: aPoll

	| question |
	
	question := (aPoll questionList select: [:q | q id = questionid]) first.
	^ answer votedChoiceList allSatisfy: [:votedChoice |
			question isVotedChoice: votedChoice ValidFrom: aUser]