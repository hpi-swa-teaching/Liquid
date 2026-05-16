toolbuilder
buildSavePollAsDraftButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Save as Draft';
		enabled: #pollSelected;
		help: 'Save the structure of the selected poll as a reusable draft.';
		action: #savePollAsDraft;
		yourself