toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: (self isResultMail ifTrue: ['Liquid - Send Results'] ifFalse: ['Liquid - User Sets']);
		extent: self extent;
		children: {
			self buildMailTextInputWith: aBuilder.
			self buildReplacementListViewWith: aBuilder.
			self buildSenderInputWith: aBuilder.
			self buildSubjectInputWith: aBuilder.
			self buildUserSetListViewWith: aBuilder.
			self buildUserSetLabelWith: aBuilder.
			self buildSendButtonWith: aBuilder};
		yourself)