toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - User Sets';
		extent: 500 @ 400;
		children: {
			self buildMailTextInputWith: aBuilder.
			self buildReplacementListViewWith: aBuilder.
			self buildSenderInputWith: aBuilder.
			self buildSubjectInputWith: aBuilder.
			self buildUserSetListViewWith: aBuilder.
			self buildUserSetLabelWith: aBuilder.
			self buildSendButtonWith: aBuilder.
			} yourself).