deadline
buildDeadlineDayWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineDayList;
		getIndex: #deadlineDay;
		setIndex: #deadlineDay:;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.25;
			rightFraction: 0.34;
			bottomFraction: 1;
			yourself);
		yourself