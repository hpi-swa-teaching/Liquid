anti-cheat
isAnswer: answer FromUser: aUser ValidForQuestionId: questionid InPoll: aPoll
	| question |
	question := (aPoll pollDraft questionList select: [:q | q id = questionid]) first.
	^ answer votedChoiceList allSatisfy: [:votedChoice | self isVotedChoice: votedChoice FromUser: aUser ValidForQuestion: question]