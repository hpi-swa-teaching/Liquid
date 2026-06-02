accessing
kahootLink

	^ 'http://' , NetNameResolver localAddressString , ':8000/' , self kahootQuiz quizId
