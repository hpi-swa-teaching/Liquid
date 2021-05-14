as yet unclassified
importSurveyWithId: aString

	self mockUpPoll: (ObjectRepo current at: aString).
	self questionList: self mockUpPoll questionList.
	self changed: #mockUpPoll.
	self changed: #questionList.