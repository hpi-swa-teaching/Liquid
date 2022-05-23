toolbuilder
buildQuestionListWith: aBuilder

	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec 
		model: self;
		list: #questionList; 
		getIndex: #questionIndex; 
		setIndex: #questionIndex:.
		"menu: #systemCategoryMenu:; 
		keyPress: #systemCatListKey:from:."

	^ listSpec