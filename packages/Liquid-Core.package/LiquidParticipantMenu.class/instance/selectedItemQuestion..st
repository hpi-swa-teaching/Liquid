accessing
selectedItemQuestion: aQuestion

	| answer |
	
	self votedChoiceList: OrderedCollection new.
	"ifAbsent to surpress expected KeyNotFoundError"
	answer := (self pollAnswer answers at: (aQuestion id) ifAbsent: []).

	answer ifNotNil: [
		self votedChoiceList add: answer votedChoice.
	].

	selectedItemQuestion := aQuestion.
	self changed: #selectedItemQuestion.
	aQuestion ifNotNil: [
			self choiceList: aQuestion choiceList.
			self changed: #choiceList.
			self changed: #votedChoiceList.
	]