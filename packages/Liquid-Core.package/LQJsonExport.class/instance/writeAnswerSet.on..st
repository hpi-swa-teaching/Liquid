printing
writeAnswerSet: anAnswerSet on: aStream

	aStream nextPutAll: '{'.
	poll questionList
		do: [:question |
			aStream nextPutAll: (self jsonValue: question title); nextPutAll: ':'.
			anAnswerSet answers at: question id
				ifPresent: [:answer | aStream nextPutAll: (self jsonValue: answer exportValue)]
				ifAbsent: [aStream nextPutAll: 'null']]
		separatedBy: [aStream nextPutAll: ','].
	aStream nextPutAll: '}'