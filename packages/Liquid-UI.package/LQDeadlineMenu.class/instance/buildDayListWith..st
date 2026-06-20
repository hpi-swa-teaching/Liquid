toolbuilder
buildDayListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #dayList;
		getIndex: #day;
		setIndex: #day:;
		frame: (LayoutFrame new 
			topFraction: 0.1; 
			bottomFraction: 0.5; 
			leftFraction: 0.02; 
			rightFraction: 0.2; 
			yourself);
		yourself