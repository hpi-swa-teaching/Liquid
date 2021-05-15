initialize
importSurveyWithId: aString
|importedPoll|
	importedPoll := ObjectRepo current at: aString.
	importedPoll ifNil: [^ nil].
	self mockUpPoll: importedPoll.
	self questionList: self mockUpPoll questionList.
	self changed: #mockUpPoll.
	self changed: #questionList.