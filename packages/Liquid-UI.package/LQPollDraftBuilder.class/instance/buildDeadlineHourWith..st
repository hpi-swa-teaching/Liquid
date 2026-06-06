toolbuilder
buildDeadlineHourWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: deadlineModel;
		list: #deadlineHourList;
		getIndex: #deadlineHour;
		setIndex: #deadlineHour:;
		yourself