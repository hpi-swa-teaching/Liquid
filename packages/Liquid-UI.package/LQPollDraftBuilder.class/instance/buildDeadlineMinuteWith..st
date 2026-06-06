toolbuilder
buildDeadlineMinuteWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #deadlineMinuteList;
		getIndex: #deadlineMinute;
		setIndex: #deadlineMinute:;
		yourself