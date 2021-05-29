initialize
buildWith: aBuilder 

self buildSelectQuestionPanelWith: aBuilder.

^ aBuilder build: (aBuilder pluggableWindowSpec new
	model: self;
	label: 'Liquid - Participant';
	extent: 500@400;
	children: {	self selectQuestionPanel.
					self buildChoiceListWith: aBuilder.
					self buildVotedChoiceListWith: aBuilder.
					self buildVoteChoiceButtonWith: aBuilder.
					self buildSendAnswerButtonWith: aBuilder.
					};
	yourself)