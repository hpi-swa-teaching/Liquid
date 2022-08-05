as yet unclassified
setUp
	
	super setUp.
	
	q1a1 := LQChoice newFrom: 'Q1A1'.
	q1a2 := LQChoice newFrom: 'Q1A2'.
	q2a1 := LQChoice newFrom: 'Q2A1'.
	q2a2 := LQChoice newFrom: 'Q2A2'.
	q1 := self createQuestionTitled: 'Question 1' withChoices: {q1a1 . q1a2}.
	q2 := self createQuestionTitled: 'Question 2' withChoices: {q2a1 . q2a2}.
	
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll pollDraft questionList
		add: q1;
		add: q2.
		
	as1 := LQAnswerSet newWithAnswers: {
		LQChoicesAnswer newWithQuestion: q1 andVotes: {q1a1 . q1a2} .
		LQChoicesAnswer newWithQuestion: q2 andVotes: {q1a2}
	} for: poll.
	
	as2 :=  LQAnswerSet newWithAnswers: {
		LQChoicesAnswer newWithQuestion: q1 andVotes: {q1a1} .
		LQChoicesAnswer newWithQuestion: q2 andVotes: {q2a1}
	} for: poll.
	
	poll startWithId: 'IAmAPoll' ifTaken: [self fail: 'Poll ID already taken'].