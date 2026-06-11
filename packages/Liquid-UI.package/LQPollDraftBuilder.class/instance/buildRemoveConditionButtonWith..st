toolbuilder
buildRemoveConditionButtonWith: aBuilder

    ^ aBuilder pluggableButtonSpec new
        model: self;
        label: 'Remove Condition';
        help: 'Remove the condition from the currently selected question.';
        action: #removeConditionFromCurrentQuestion;
        frame: self removeConditionButtonFrame;
        yourself