initialize
buildWith: aBuilder 

^ aBuilder build: (aBuilder pluggableWindowSpec new
	model: self;
	label: 'Liquid - Participant';
	extent: 500@400;
	children: {	self buildAnswerPanelWith: aBuilder.
					self buildSendAnswerButtonWith: aBuilder.
					};
	yourself)