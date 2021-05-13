as yet unclassified
buildSaveAnswerButtonWith: aBuilder

^ aBuilder pluggableButtonSpec new
	model: self;
	label: 'Save selected answer';
	action: #saveSelectedAnswer;
	frame: (LayoutFrame new
				topFraction: 0.5;
				bottomFraction: 0.6;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself.