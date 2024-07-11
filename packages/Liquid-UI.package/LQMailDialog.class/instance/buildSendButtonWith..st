toolbuilder
buildSendButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Send';
		model: self;
		action: #sendMails;
		enabled: true;
		frame: (LayoutFrame new
			topFraction: 0.01;
			bottomFraction: 0.1;
			leftFraction: 0.01;
			rightFraction: 0.24;
			yourself);
		yourself