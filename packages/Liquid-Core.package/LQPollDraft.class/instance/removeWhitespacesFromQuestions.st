modifying
removeWhitespacesFromQuestions
	self questionList
		do: [:question | question
				choiceList: (question choiceList
						collect: [:value | value withBlanksTrimmed])]