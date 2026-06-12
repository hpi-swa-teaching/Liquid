as yet unclassified
triggerQuestion: aTriggerQuestionId triggerChoice: aChoiceDescription target: aTargetQuestionId

    | condition |
    condition := self new.
    condition triggerQuestionId: aTriggerQuestionId.
    condition triggerChoiceDescription: aChoiceDescription.
    condition targetQuestionId: aTargetQuestionId.
    ^ condition