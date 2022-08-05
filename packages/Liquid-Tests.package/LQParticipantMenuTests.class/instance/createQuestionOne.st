helper methods
createQuestionOne

	^ LQChoicesQuestion new
		title: 'Question 1';
		choiceList: {(self q1c1) . (self q1c2)};
		yourself
