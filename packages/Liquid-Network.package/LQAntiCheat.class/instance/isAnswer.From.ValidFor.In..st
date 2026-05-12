anti-cheat
isAnswer: answer From: aUser ValidFor: questionID In: aPoll

	| question |
	question := (aPoll questionList select: [:q | q id = questionID]) first.
	"TODO: Add self voting detection"
	
	^ answer choicesRanking allSatisfy: [:votedChoice | question isVotedChoice: votedChoice ValidFrom: aUser]