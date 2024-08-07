helper methods
let: target ParticipantsInteractWithPollId: aString

	target timesRepeat: [ | p q answerSet |
		p := LQPollRepo default
			at: aString
			ifAbsent: [self fail: 'Poll not found at given ID'].
		q := p questionList first.
		answerSet := LQAnswerSet new
			addAnswer: (LQChoicesAnswer new
				questionId: q id;
				choicesRanking: {LQChoice newFrom: 'in Whiscashs throat'};
				yourself);
			pollId: p id;
			yourself.
		(LQDelayMessageDecorator on: LQPollRepo default)
			addAnswerSet: answerSet
			ToPoll: p id]