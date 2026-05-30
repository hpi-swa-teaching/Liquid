deadline
buildDeadlineMonthWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineMonthList;
		getIndex: #deadlineMonth;
		setIndex: #deadlineMonth:;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.34;
			rightFraction: 0.43;
			bottomFraction: 1;
			yourself);
		yourself