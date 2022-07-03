as yet unclassified
buildMailTextInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		"getText: ;"
		editText: #rawMailText:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new 
			topFraction: 0.15; 
			bottomFraction: 0.99; 
			leftFraction: 0.25; 
			rightFraction: 0.99)