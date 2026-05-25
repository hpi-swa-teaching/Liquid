answerExclusion
choiceListWithExclusionsMarked

    ^ self choiceList collect: [:choice |
        (self isChoiceExcluded: choice)
            ifTrue: [self colourGrey: choice description]
            ifFalse: [choice description]]