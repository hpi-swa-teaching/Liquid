tests
testRequiresAuthenticationTrue

	| userSet poll |
	
	userSet :=  (LQUserSet new
		addUser: (LQUser new id: '3'; name: 'kandidat3'; group: 'group2');
		addUser: (LQUser new id: '4'; name: 'kandidat4'; group: 'group1');
		yourself).
	userSet addToRepo.
	poll:= (LQPoll newWithPollDraft: LQPollDraft new).
	poll pollDraft questionList add: (LQChoicesQuestion new
		title: 'Where is the master ball';
		choiceList: {LQChoice newFrom: 'in Whiscashs throat'};
		yourself).
	poll userSetID: userSet id.
	self assert: poll requiresAuthentication