as yet unclassified
buildWith: aBuilder 

^ aBuilder build: (aBuilder pluggableWindowSpec new
	model: self;
	label: 'Liquid - Participant';
	extent: 500@400;
	children: { self buildQuestionListWith: aBuilder.
					self buildAnswerListWith: aBuilder.
					self buildSelectedAnswerListWith: aBuilder.
					self buildSaveAnswerButtonWith: aBuilder.
					};
	yourself)