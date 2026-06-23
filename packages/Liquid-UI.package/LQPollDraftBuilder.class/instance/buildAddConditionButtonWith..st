toolbuilder
buildAddConditionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Add Condition';
		help: 'Only show this question if a previous question was answered a certain way.';
		action: #addCondition;
		frame: self addConditionButtonFrame;
		yourself