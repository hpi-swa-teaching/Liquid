toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - User Sets';
		extent: 200 @ 360;
		children: {
			self buildUserSetListViewWith: aBuilder.
			self buildRemoveUserSetButtonWith: aBuilder.
			self buildAddUserSetFileButtonWith: aBuilder} yourself)