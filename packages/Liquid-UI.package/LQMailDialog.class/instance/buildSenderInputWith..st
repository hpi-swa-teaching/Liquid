as yet unclassified
buildSenderInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		"getText: ;"
		editText: #mailSender:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new 
			topFraction: 0.01; 
			bottomFraction: 0.08; 
			leftFraction: 0.25; 
			rightFraction: 0.99)