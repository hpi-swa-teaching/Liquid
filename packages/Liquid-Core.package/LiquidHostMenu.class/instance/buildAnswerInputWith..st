input fields
buildAnswerInputWith: aBuilder

^ (aBuilder pluggableTextSpec new
	model: self;
	editText: #currentAnswerInput: ;
	setText: #currentAnswerInput: ;
	indicateUnacceptedChanges: false;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.2;
				leftFraction: 0.6;
				rightFraction: 1;
				yourself);
	yourself)