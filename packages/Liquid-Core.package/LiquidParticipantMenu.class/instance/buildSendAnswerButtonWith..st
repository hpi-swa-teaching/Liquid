buttons
buildSendAnswerButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Send Answer';
	action: #sendAnswer;
	frame: (LayoutFrame new
				topFraction: 0.9;
				bottomFraction: 1;
				leftFraction: 0.4;
				rightFraction: 0.6;
				yourself);
	yourself