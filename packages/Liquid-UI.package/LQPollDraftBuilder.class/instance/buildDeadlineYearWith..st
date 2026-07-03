toolbuilder
buildDeadlineYearWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineYearList;
		getIndex: #deadlineYear;
		setIndex: #deadlineYear:;
		yourself