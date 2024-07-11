toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Poll Drafts';
		extent: self extent;
		children: {
			self buildPollDraftListViewWith: aBuilder.
			self buildShowPollDraftButtonWith: aBuilder.
			self buildRemovePollDraftButtonWith: aBuilder};
		yourself)