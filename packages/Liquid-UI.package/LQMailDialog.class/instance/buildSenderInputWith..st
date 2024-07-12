toolbuilder
buildSenderInputWith: aBuilder

	^ aBuilder pluggableInputFieldSpec new
		model: self;
		help: 'Sender E-Mail';
		getText: #mailSender;
		editText: #mailSender:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			topFraction: 0.01;
			bottomFraction: 0.08;
			leftFraction: 0.25;
			rightFraction: 0.99;
			yourself);
		yourself