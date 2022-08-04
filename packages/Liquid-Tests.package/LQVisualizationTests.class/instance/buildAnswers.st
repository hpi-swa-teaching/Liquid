helper methods
buildAnswers
	
	self q1: LQChoicesQuestion new.
	self q1 addChoice: (self q1a1).
	self q1 addChoice: (self q1a2).

	self q2: LQChoicesQuestion new.
	self q2 addChoice: (self q2a1).
	self q2 addChoice: (self q2a2)