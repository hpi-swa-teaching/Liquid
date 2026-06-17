modifying
openAddConditionDialog

    | triggerQuestion triggerChoice |
    self validateConditionTarget ifFalse: [ ^ self ].
    triggerQuestion := self pickTriggerQuestion.
    triggerQuestion ifNil: [ ^ self ].
    triggerChoice := self pickTriggerChoice: triggerQuestion.
    triggerChoice ifNil: [ ^ self ].
    self confirmCondition: triggerQuestion choice: triggerChoice.
    self changed: #list