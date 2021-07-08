as yet unclassified
buildErrorTextBoxWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 readOnly: true;
		 indicateUnacceptedChanges: false;
		 getText: #getRemoteErrorMessage;
		 frame: (LayoutFrame new topFraction: 0;
			 bottomFraction: 1;
			 leftFraction: 0;
			 rightFraction: 1;
			 yourself);
		 yourself