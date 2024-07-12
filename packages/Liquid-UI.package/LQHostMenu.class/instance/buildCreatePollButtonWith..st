toolbuilder
buildCreatePollButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Create Poll';
		help: 'Create a new Poll from scratch and run it';
		action: #createPoll;
		yourself