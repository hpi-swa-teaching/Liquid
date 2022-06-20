toolbuilder
buildWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: parent__NOTFINALSOLUTION;
		children: {
			self buildTitleInputWith: aBuilder.
			self buildChoicesInputWith: aBuilder.
			self buildRunPollButtonWith: aBuilder.
			self buildMaxNumberOfChoicesInputWith: aBuilder.
			self buildMaxNumberOfChoicesLabelWith: aBuilder.
			self buildAddQuestionButtonWith: aBuilder} yourself