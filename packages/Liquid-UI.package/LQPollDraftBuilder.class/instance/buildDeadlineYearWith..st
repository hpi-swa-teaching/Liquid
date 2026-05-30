deadline
buildDeadlineYearWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineYearList;
		getIndex: #deadlineYear;
		setIndex: #deadlineYear:;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.43;
			rightFraction: 0.54;
			bottomFraction: 1;
			yourself);
		yourself