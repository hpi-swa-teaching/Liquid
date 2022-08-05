initialize-release
buildAnswerSets
	
	as1 := LQAnswerSet newWithAnswers: {
		LQChoicesAnswer newWithQuestion: q1 andVotes: {q1a1 . q1a2} .
		LQChoicesAnswer newWithQuestion: q2 andVotes: {q1a2}
	} for: poll.
	as2 :=  LQAnswerSet newWithAnswers: {
		LQChoicesAnswer newWithQuestion: q1 andVotes: {q1a1} .
		LQChoicesAnswer newWithQuestion: q2 andVotes: {q2a1}
	} for: poll.