toolbuilder
buildChoicesInputWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 getText: #choiceList;
		 editText: #choiceList:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame
				fractions: (0 @ 0 extent: 1 @ 1)
				offsets: (0 @ 30 extent: 0 @ -90))