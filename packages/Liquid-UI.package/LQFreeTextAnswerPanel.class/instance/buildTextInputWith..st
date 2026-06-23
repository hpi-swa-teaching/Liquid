toolbuilder
buildTextInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #retrieveAnswerText;
		editText: #updateText:;
		indicateUnacceptedChanges: false;
		frame: (0.15 @ 0.2 corner: 0.95 @ 0.85) yourself