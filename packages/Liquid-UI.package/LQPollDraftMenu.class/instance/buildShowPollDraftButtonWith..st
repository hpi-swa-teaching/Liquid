toolbuilder
buildShowPollDraftButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Show Draft'; 
		 action: #showDraft;
		 frame: (LayoutFrame new topFraction: 0.67;
			 bottomFraction: 0.82;
			 leftFraction: 0.1;
			 rightFraction: 0.9;
			 yourself);
		 yourself