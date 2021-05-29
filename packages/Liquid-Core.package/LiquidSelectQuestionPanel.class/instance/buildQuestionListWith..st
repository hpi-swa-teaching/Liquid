as yet unclassified
buildQuestionListWith: aBuilder

^ aBuilder pluggableListSpec new
	model: self;
	list: #questionList;
	getSelected: #selectedQuestion;
	setSelected: #selectedQuestion:;
	frame: (0@0 corner: 1@1);
	yourself.