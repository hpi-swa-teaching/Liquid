toolbuilder
buildEnterHostButtonWith: aBuilder 
	^ aBuilder pluggableButtonSpec new model: self;
		 label: 'Enter Host Mode';
		 help: 'Enter the host menu, where you can create and close polls and get results to your polls';
		 action: #enterHostMode;
		 frame: (LayoutFrame new topFraction: 0.5;
			 bottomFraction: 1;
			 leftFraction: 0.5;
			 rightFraction: 1;
			 yourself);
		 yourself