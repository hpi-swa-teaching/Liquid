initialize
buildAnswerPanelWith: aBuilder

self answerPanel: (LiquidAnswerPanel newWith: aBuilder).
"current 'workaround' while there is more than one question per poll possible"
self answerPanel question: (self poll pollDraft questionList at: 1). 
self pollAnswer addAnswer: (self answerPanel answer).