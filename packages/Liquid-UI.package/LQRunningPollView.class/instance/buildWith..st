toolbuilder
buildWith: aBuilder 
	^ aBuilder build: (aBuilder pluggableWindowSpec new model: self;
			 label: 'Poll running with ID: ';
			 extent: 350 @ 130;
			 children: {self buildIDTextBoxWith: aBuilder. self buildClosePollButtonWith: aBuilder};
			 yourself)