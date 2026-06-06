toolbuilder
buildDeadlineYearWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: deadlineModel;
		list: #deadlineYearList;
		getIndex: #deadlineYear;
		setIndex: #deadlineYear:;
		yourself