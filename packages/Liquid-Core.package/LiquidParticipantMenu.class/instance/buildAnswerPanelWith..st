initialize
buildAnswerPanelWith: aBuilder
|answerPanel|
answerPanel := (LiquidAnswerPanel newWith: aBuilder).
"current 'workaround' while there is more than one question per poll possible:"
answerPanel question: (self poll pollDraft questionList at: 1). 
self answerSet addAnswer: (answerPanel answer).
^ answerPanel