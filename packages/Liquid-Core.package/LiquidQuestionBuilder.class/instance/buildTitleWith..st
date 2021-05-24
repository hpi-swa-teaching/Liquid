as yet unclassified
buildTitleWith: aBuilder
	^ aBuilder pluggableTextSpec new
		model: self;
		frame: (LayoutFrame fractions: (0@0 extent: 1@0) offsets: (0@0 extent: 0@30));
		getText: #title;
		setText: #title:;
		yourself
	