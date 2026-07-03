running
setUp

	| question |
	super setUp.
	self editor: LQGroupExclusionEditor new.
	self userSet: (LQUserSet new
		addUser: (self userWithGroup: 'group1');
		addUser: (self userWithGroup: 'group2');
		yourself).
	self userSet addToRepo.
	self pollDraft: LQPollDraft new.
	self pollDraft userSetID: self userSet id.
	question := LQMultiChoiceQuestion new
		title: 'Vote for?';
		choiceList: {LQChoice newFrom: 'Alice'. LQChoice newFrom: 'Bob'} asOrderedCollection;
		yourself.
	self questionBuilder: (LQMultiChoiceQuestionBuilder new question: question; yourself)