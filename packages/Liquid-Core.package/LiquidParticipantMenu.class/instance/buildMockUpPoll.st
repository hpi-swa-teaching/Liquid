initialize
buildMockUpPoll
|mockUpPollDraft question|

mockUpPollDraft := LiquidPollDraft new.

mockUpPollDraft questionList: OrderedCollection new.

question := LiquidChoicesQuestion new.
question title: 'Do you like Liquid?'.
question choiceList add: 'Yes'.
question choiceList add: 'No'.
mockUpPollDraft questionList addLast: question.

self poll: (LiquidPoll newWithPollDraft: mockUpPollDraft).