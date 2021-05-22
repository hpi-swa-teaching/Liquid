as yet unclassified
buildTitleInputWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 getText: #title;
		 editText: #title:;
		frame: (LayoutFrame
				fractions: (0 @ 0 extent: 1 @ 0)
				offsets: (0 @ 0 extent: 0 @ 30))