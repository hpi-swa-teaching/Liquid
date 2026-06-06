toolbuilder
buildDeadlineDayWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: deadlineModel;
		list: #deadlineDayList;
		getIndex: #deadlineDay;
		setIndex: #deadlineDay:;
		yourself