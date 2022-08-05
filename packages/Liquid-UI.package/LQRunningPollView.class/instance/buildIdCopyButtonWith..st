toolbuilder
buildIdCopyButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Copy Poll-ID to Clipboard';
		action: #copyPollId;
		frame: (LayoutFrame new 
			topFraction: 0.25; 
			bottomFraction: 0.5; 
			leftFraction: 0; 
			rightFraction: 1;
			yourself);
		yourself