input fields
buildQuestionInputWith: aBuilder

^ aBuilder pluggableTextSpec new
	model: self;
	editText: #currentQuestionInput: ;
	frame: (LayoutFrame new
				topFraction: 0;
				bottomFraction: 0.2;
				leftFraction: 0;
				rightFraction: 0.4;
				yourself);
	yourself.