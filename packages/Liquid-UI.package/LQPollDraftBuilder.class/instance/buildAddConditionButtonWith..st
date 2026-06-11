toolbuilder
buildAddConditionButtonWith: aBuilder
    
	^ aBuilder pluggableButtonSpec new
        model: self;
        label: 'Add Condition';
        help: 'Define when this question should be shown based on the answer to a 	previous question.';
        action: #openAddConditionDialog;
        frame: self addConditionButtonFrame;
        yourself