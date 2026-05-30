deadline
buildDeadlineMinuteWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineMinuteList;
		getIndex: #deadlineMinute;
		setIndex: #deadlineMinute:;
		frame: (LayoutFrame new
			topFraction: 0.925;
			leftFraction: 0.63;
			rightFraction: 0.72;
			bottomFraction: 1;
			yourself);
		yourself