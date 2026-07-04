toolbuilder
buildQuestionListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #list;
		getIndex: #getIndex;
		setIndex: #setIndex:;
		yourself
