toolbuilder
buildTextAnswersWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 leftFraction: 0.25;
			 rightFraction: 1;
			 yourself);
		 getText: #getTextAnswers;
		 yourself