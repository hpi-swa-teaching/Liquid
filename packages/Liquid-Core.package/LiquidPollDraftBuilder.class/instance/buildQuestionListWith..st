as yet unclassified
buildQuestionListWith: aBuilder 
	^ aBuilder pluggablePanelSpec new model: self;
		frame: (LayoutFrame
				fractions: (0 @ 0 extent: 1 @ 1)
				offsets: (0 @ 30 extent: 0 @ -60));
		layout: #vertical;
		children: #getChildren
		