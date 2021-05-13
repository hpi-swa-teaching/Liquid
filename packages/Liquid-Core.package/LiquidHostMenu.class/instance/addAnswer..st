input fields
addAnswer: aString

self answerList addLast: aString.
self changed: #answerList.
self currentAnswerInput: ''.
(self dependents at: 7) setText: self currentAnswerInput.