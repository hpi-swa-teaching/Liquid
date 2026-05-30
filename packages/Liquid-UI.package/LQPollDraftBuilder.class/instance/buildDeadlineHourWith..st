deadline
buildDeadlineHourWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineHourList;
		getIndex: #deadlineHour;
		setIndex: #deadlineHour:;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.54;
			rightFraction: 0.63;
			bottomFraction: 1;
			yourself);
		yourself