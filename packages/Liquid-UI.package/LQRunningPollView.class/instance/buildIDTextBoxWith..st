toolbuilder
buildIDTextBoxWith: aBuilder 
	^ aBuilder pluggableTextSpec new model: self;
		 readOnly: true;
		 indicateUnacceptedChanges: false;
		 getText: #pollId;
		 frame: (LayoutFrame
				fractions: (0@0.05 extent: 1@0)
				offsets: (0@0 extent: 0@30))
		 yourself