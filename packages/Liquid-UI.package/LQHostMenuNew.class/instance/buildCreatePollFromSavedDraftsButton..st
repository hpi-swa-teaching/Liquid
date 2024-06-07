toolbuilder
buildCreatePollFromSavedDraftsButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Poll From Saved Drafts';
		help: 'Opens a window with saved drafts you can then edit and run.';
		action: #createPoll;
		yourself