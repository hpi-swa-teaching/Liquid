toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Poll running with ID ';
		extent: 350 @ 130;
		children: {self buildIDTextBoxWith: aBuilder. 
						self buildIdCopyButtonWith: aBuilder. 
						self buildPollInteractionButtonWith: aBuilder.
						self buildOpenMailDialogButtonWith: aBuilder};
		yourself)