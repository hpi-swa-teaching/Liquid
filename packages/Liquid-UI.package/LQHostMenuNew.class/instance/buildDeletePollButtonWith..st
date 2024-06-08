toolbuilder
buildDeletePollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Delete Poll';
		help: 'Delete Poll to clear space for new polls.';
		action: #deletePoll;
		yourself