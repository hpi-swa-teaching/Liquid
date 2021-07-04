buttons
buildSendAnswerButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Send Answer';
	action: #sendAnswer;
	frame: (0.7@0.81 corner: 0.9@0.91);
	yourself