initialize
buildMockUpPoll
|question|

self mockUpPoll: LiquidPollDraft new.
self mockUpPoll questionList: OrderedCollection new.

question := LiquidSingleChoiceQuestion new.
question title: 'Do you like Liquid?'.
question choiceList add: 'Yes'.
question choiceList add: 'No'.
self mockUpPoll questionList addLast: question.

question := LiquidSingleChoiceQuestion new.
question title: 'Do you like SW(A)T?'.
question choiceList add: 'Sure'.
question choiceList add: 'Of course!'.
self mockUpPoll questionList addLast: question.