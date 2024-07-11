initialize-release
buildAnswerSets
	
	self as1: (LQAnswerSet newWithAnswers: {
		LQChoicesAnswer newWithQuestion: self q1 andVotes: {self q1a1 . self q1a2} .
		LQChoicesAnswer newWithQuestion: self q2 andVotes: {self q1a2}
	} for: self poll).
	self as2: (LQAnswerSet newWithAnswers: {
		LQChoicesAnswer newWithQuestion: self q1 andVotes: {self q1a1} .
		LQChoicesAnswer newWithQuestion: self q2 andVotes: {self q2a1}
	} for: self poll).