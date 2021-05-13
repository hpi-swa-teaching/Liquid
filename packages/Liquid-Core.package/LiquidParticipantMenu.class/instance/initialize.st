as yet unclassified
initialize

self answerList: OrderedCollection new;
	questionList: OrderedCollection new;
	selectedAnswerList: OrderedCollection new.
	self buildMockUpPoll.
	self questionList: self mockUpPoll questionList.