toolbuilder
buildDeadlineHourWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineHourList;
		getIndex: #deadlineHour;
		setIndex: #deadlineHour:;
		yourself