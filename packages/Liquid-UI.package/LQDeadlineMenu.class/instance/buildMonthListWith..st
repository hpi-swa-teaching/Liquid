toolbuilder
buildMonthListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #monthList;
		getIndex: #month;
		setIndex: #month:;
		frame: (LayoutFrame new 
			topFraction: 0.1; 
			bottomFraction: 0.5; 
			leftFraction: 0.21; 
			rightFraction: 0.39; 
			yourself);
		yourself