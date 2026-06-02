toolbuilder
buildTimeLimitInputWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #timeLimitString;
		editText: #timeLimitString:;
		help: 'Enter time limit in seconds.';
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame fractions: (0.8 @ 0.8 extent: 0.2 @ 0.1) offsets: (0 @ 0 extent: 0 @ 0));
		yourself
