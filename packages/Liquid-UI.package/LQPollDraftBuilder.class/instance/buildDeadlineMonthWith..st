toolbuilder
buildDeadlineMonthWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: deadlineModel;
		list: #deadlineMonthList;
		getIndex: #deadlineMonth;
		setIndex: #deadlineMonth:;
		yourself