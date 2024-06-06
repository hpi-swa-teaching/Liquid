as yet unclassified
buildPollDraftListViewWith: aBuilder 
	^ aBuilder pluggableListSpec new model: self;
		 list: #pollDrafts;
		 getIndex: #choiceSelected;
		 setIndex: #choiceSelected:; 
		 frame: (LayoutFrame new topFraction: 0.1;
			 bottomFraction: 0.65;
			 leftFraction: 0.1;
			 rightFraction: 0.9;
			 yourself);
		 yourself