initialize
buildWith: aBuilder 

^ aBuilder build: (aBuilder pluggableWindowSpec new
	model: self;
	label: 'Liquid - Host';
	extent: 500@400;
	children: { self buildQuestionListWith: aBuilder.
					self buildAnswerListWith: aBuilder.
					self buildQuestionButtonWith: aBuilder.
					self buildAnswerButtonWith: aBuilder.
					self buildQuestionInputWith: aBuilder.
					self buildAnswerInputWith: aBuilder.
					self buildPollTitleInputWith: aBuilder.
					self buildSavePollButtonWith: aBuilder.
					};
	yourself)