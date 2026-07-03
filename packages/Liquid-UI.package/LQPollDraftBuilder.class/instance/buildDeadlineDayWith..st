toolbuilder
buildDeadlineDayWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineDayList;
		getIndex: #deadlineDay;
		setIndex: #deadlineDay:;
		yourself