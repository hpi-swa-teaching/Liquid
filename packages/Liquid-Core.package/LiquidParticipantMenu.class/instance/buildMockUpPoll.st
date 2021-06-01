initialize
buildMockUpPoll
|mockUpPollDraft question|

mockUpPollDraft := LiquidPollDraft new.

mockUpPollDraft questionList: OrderedCollection new.

question := LiquidSingleChoiceQuestion new.
question title: 'Do you like Liquid?'.
question choiceList add: 'Yes'.
question choiceList add: 'No'.
mockUpPollDraft questionList addLast: question.

question := LiquidSingleChoiceQuestion new.
question title: 'Do you like SW(A)T?'.
question choiceList add: 'Sure'.
question choiceList add: 'Of course!'.
mockUpPollDraft questionList addLast: question.

self poll: (LiquidPoll newWithPollDraft: mockUpPollDraft).