toolbuilder
buildOpenMailDialogButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Send Mails';
		action: #openMailDialog;
		enabled: #mailDialogButtonEnabled;
		frame: (LayoutFrame new 
			topFraction: 0.5; 
			bottomFraction: 0.75; 
			leftFraction: 0; 
			rightFraction: 1;
			yourself);
		yourself