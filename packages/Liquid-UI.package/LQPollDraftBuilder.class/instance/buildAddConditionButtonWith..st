toolbuilder
buildAddConditionButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Condition';
		action: #openAddConditionDialog;
		frame: self addConditionButtonFrame;
		help: 'Only show this question if...';
		yourself