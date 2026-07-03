toolbuilder
buildDeadlineMonthWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineMonthList;
		getIndex: #deadlineMonth;
		setIndex: #deadlineMonth:;
		yourself