as yet unclassified
buildQuestionListWith: aBuilder

	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec 
		model: self;
		list: #list;
		getIndex: #getIndex; 
		setIndex: #setIndex:.

	^ listSpec