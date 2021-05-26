initialize
buildWith: aBuilder 

^ aBuilder build: (aBuilder pluggableWindowSpec new
	model: self;
	label: 'Liquid - Participant';
	extent: 500@400;
	children: { self buildQuestionListWith: aBuilder.
					self buildChoiceListWith: aBuilder.
					self buildResultTextBoxWith: aBuilder.
					self buildVoteChoiceButtonWith: aBuilder.
					self buildSendAnswerButtonWith: aBuilder.
					};
	yourself)