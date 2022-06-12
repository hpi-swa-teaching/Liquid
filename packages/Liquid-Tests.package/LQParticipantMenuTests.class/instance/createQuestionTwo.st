helper methods
createQuestionTwo

	^LQChoicesQuestion new
		title: 'Q2';
		choiceList: {(self q2c1) . (self q2c2)};
		yourself
