initialize
buildWith: aBuilder 

self buildAnswerPanelWith: aBuilder.

^ aBuilder build: (aBuilder pluggableWindowSpec new
	model: self;
	label: 'Liquid - Participant';
	extent: 500@400;
	children: {	self answerPanel.
					self buildSendAnswerButtonWith: aBuilder.
					};
	yourself)