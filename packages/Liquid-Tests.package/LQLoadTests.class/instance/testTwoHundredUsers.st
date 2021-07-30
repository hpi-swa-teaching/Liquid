tests
testTwoHundredUsers
	<timeout: 20>

	| server port poll p q hostPoll pollId target |
	port := LQPortAssigner get.
	server := LQRemoteRepoServer new.
	server listenOn: port.
	LQPollRepo default: (LQRemoteRepoClient new url: 'http://localhost:', port).
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll pollDraft questionList add: (LQChoicesQuestion new
		title: 'Where is the master ball';
		choiceList: {'in Whiscashs throat'. 'in Kangamas bag'};
		yourself).
	
	pollId := 'gotta-catch-rayquaza'.
	poll startWithId: pollId ifTaken: [self fail: 'Poll ID already taken'].
	
	"participant"
	target := 200.
	target timesRepeat: [
		p := LQPollRepo default
			at: pollId
			ifAbsent: [self fail: 'Poll not found at given ID'].
		q := p pollDraft questionList first.
		p addAnswerSet: (LQAnswerSet new
			addAnswer: (LQChoicesAnswer new
				questionId: q id;
				votedChoiceList: {'in Whiscashs throat'};
				yourself);
			pollId: p id;
			yourself)].
	"host"
	
	poll closeWithPassword: (LQPasswordManager default
		findPasswordFor: pollId
		ifAbsent: [self fail: 'expected pw to be present']).
	
	hostPoll := LQPollRepo default
		at: pollId
		ifAbsent: [self fail: 'Poll not found at given ID'].
	
	self assert: target equals: hostPoll answerSets size.
	server destroy