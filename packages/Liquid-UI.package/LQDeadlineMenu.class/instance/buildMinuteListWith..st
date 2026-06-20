toolbuilder
buildMinuteListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #minuteList;
		getIndex: #minute;
		setIndex: #minute:;
		frame: (LayoutFrame new 
			topFraction: 0.1; 
			bottomFraction: 0.5; 
			leftFraction: 0.79; 
			rightFraction: 0.98; 
			yourself);
		yourself