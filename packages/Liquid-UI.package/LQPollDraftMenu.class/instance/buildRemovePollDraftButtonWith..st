as yet unclassified
buildRemovePollDraftButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Remove Draft';
		 action: #removeDraft;
		frame: (LayoutFrame new topFraction: 0.83;
			 bottomFraction: 0.98;
			 leftFraction: 0.1;
			 rightFraction: 0.9;
			 yourself);
		 yourself