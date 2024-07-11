toolbuilder
buildCreateAnotherPollButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Another Poll';
		help: 'Creates another poll and opens the draft builder for it in a new window.';
		action: #createPoll;
		yourself