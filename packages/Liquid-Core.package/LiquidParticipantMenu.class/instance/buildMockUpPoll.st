as yet unclassified
buildMockUpPoll
|question|

self mockUpPoll: LiquidSurvey new.
self mockUpPoll questionList: OrderedCollection new.

question := LiquidQuestion new.
question questionTitle: 'Do you like Liquid?'.
question answerList add: 'Yes'.
question answerList add: 'No'.
self mockUpPoll questionList addLast: question.

question := LiquidQuestion new.
question questionTitle: 'Do you like SW(A)T?'.
question answerList add: 'Sure'.
question answerList add: 'Of course!'.
self mockUpPoll questionList addLast: question.