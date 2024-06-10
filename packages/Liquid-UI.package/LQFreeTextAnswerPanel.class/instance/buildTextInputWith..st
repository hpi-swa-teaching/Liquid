toolbuilder
buildTextInputWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 getText: #answer;
		 editText: #answer:;
		 indicateUnacceptedChanges: false;
		
		frame: (0.15 @ 0.2 corner: 0.9 @ 0.8);
		 yourself