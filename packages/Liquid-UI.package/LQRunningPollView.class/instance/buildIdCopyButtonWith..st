toolbuilder
buildIdCopyButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Copy Poll-ID to Clipboard';
		action: #copyPollId;
		frame: (LayoutFrame fractions: (0 @ 0.05 extent: 1 @ 0.2) offsets: (0 @ 30 extent: 0 @ 20)) yourself