as yet unclassified
testTwoHundredUsers
	<timeout: 20>
	| server port poll p q hostPoll pollId target |
	port := (10000 to: 50000) atRandom.
	server := RemoteRepoServer new.
	server listenOn: port.
	PollRepo
		default: (RemoteRepoClient new url: 'http://localhost:' , port).
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	poll pollDraft questionList add: (LiquidChoicesQuestion new title: 'Where is the master ball';
			 choiceList: {'in Whiscashs throat'. 'in Kangamas bag'};
			 yourself).
			
	pollId := 'gotta-catch-rayquaza'.
	poll
		startWithId: pollId
		ifTaken: [self error: 'this shouldnt have occured'].
		
	"participant"
	target := 200.
	target timesRepeat: [
	p := PollRepo default
				at: pollId
				ifAbsent: [self error: 'nonono'].
	q := p pollDraft questionList at: 1.
	p addAnswerSet: (LiquidAnswerSet new addAnswer: (LiquidChoicesAnswer new questionId: q id;
				 votedChoiceList: {'in Whiscashs throat'};
				 yourself);
			 pollId: p id;
			 yourself).
	].

	"host"
	poll closeWithPassword: (LQPasswordManager default findPasswordFor: pollId ifAbsent: [ self fail: 'expected password to exist' ]).
	
	hostPoll := PollRepo default at: pollId ifAbsent: [ self error: 'this shouldnt have occured' ].
	
	self assert: target equals: hostPoll answerSets size.
	server destroy
