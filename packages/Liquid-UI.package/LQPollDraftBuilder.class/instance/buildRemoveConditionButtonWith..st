toolbuilder
buildRemoveConditionButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Remove Condition';
		help: 'Remove the condition from the selected question.';
		action: #removeConditionFromCurrentQuestion;
		frame: self removeConditionButtonFrame;
		yourself