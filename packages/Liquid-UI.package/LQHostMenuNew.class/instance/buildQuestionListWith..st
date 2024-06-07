toolbuilder
buildQuestionListWith: aBuilder

	| listSpec |
	
	listSpec := aBuilder pluggableListSpec new.
	listSpec 
		model: self;
		list: #pollList;
		getIndex: #getIndex; 
		setIndex: #setIndex:.
	^ listSpec