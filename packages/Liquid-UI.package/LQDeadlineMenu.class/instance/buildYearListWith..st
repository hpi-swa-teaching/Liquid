toolbuilder
buildYearListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #yearList;
		getIndex: #year;
		setIndex: #year:;
		frame: (LayoutFrame new 
			topFraction: 0.1; 
			bottomFraction: 0.5; 
			leftFraction: 0.40; 
			rightFraction: 0.62; 
			yourself);
		yourself