initialize
buildAnswerPanelWith: aBuilder

self answerPanel: (LiquidAnswerPanel newWith: aBuilder).
self answerPanel question: (self poll pollDraft questionList at: 1). "current 'workaround' while there is more than one question per poll possible"