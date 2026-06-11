supporting
pickTriggerChoice: aTriggerQuestion

    | choices choiceTitles pickedIndex |
    aTriggerQuestion isMultiChoiceQuestion ifFalse: [
        UIManager default inform: 'The selected question is not a multiple choice question.
Conditions can only be based on multiple choice questions.'.
        ^ nil ].
    choices := aTriggerQuestion choiceList.
    choices isEmpty ifTrue: [
        UIManager default inform: 'The selected question has no choices yet.
Please add choices to that question first.'.
        ^ nil ].
    choiceTitles := choices collect: [ :c | c description ].
    pickedIndex := UIManager default
        chooseFrom: choiceTitles asOrderedCollection
        title: '...the answer to "' , aTriggerQuestion title , '" is:'.
    pickedIndex = 0 ifTrue: [ ^ nil ].
    ^ choices at: pickedIndex