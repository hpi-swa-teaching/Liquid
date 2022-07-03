toolbuilder
buildSubjectInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		help: 'Subject';
		getText: #mailSubject;
		editText: #mailSubject:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new 
			topFraction: 0.08; 
			bottomFraction: 0.15; 
			leftFraction: 0.25; 
			rightFraction: 0.99)