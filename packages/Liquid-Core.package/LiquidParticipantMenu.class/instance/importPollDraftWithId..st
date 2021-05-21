initialize
importPollDraftWithId: aString
|importedPoll|
	importedPoll := PollRepo default at: aString.
	importedPoll ifNil: [^ nil].
	self mockUpPoll: importedPoll.
	self questionList: self mockUpPoll questionList.
	self pollAnswer: pollAnswer new.
	self pollAnswer pollId: self mockUpPoll id.
	self changed: #mockUpPoll.
	self changed: #questionList.