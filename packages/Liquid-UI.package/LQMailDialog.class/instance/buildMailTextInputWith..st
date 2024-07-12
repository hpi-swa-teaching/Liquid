toolbuilder
buildMailTextInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		help: 'Mail Text';
		getText: #rawMailText;
		editText: #rawMailText:;
		name: self class mailTextInputName;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			topFraction: 0.15;
			bottomFraction: 0.99;
			leftFraction: 0.25;
			rightFraction: 0.99;
			yourself);
		yourself