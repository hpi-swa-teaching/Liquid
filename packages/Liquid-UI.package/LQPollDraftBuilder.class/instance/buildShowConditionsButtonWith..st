toolbuilder
buildShowConditionsButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
        model: self;
        label: 'Show Conditions';
        help: 'Show all conditions for the currently selected question.';
        action: #showConditionsForCurrentQuestion;
        yourself