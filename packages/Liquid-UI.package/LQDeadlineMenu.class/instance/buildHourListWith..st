toolbuilder
buildHourListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #hourList;
		getIndex: #hour;
		setIndex: #hour:;
		frame: (LayoutFrame new 
			topFraction: 0.1; 
			bottomFraction: 0.5; 
			leftFraction: 0.63; 
			rightFraction: 0.78; 
			yourself);
		yourself