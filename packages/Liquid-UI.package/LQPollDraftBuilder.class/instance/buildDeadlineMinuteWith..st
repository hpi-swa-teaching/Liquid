toolbuilder
buildDeadlineMinuteWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: deadlineModel;
		list: #deadlineMinuteList;
		getIndex: #deadlineMinute;
		setIndex: #deadlineMinute:;
		yourself