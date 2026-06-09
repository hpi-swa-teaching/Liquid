toolbuilder
buildPollDraftTitleWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #pollDraftTitle;
		action: #editPollTitle;
		yourself