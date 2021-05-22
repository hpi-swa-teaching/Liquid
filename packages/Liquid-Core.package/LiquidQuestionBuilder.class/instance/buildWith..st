as yet unclassified
buildWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Click mich';
		frame: (LayoutFrame fractions: (0@0 extent: 1@0) offsets: (0@0 extent: 0@30));
		yourself
	