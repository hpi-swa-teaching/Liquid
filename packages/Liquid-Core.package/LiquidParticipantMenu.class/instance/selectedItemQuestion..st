accessing
selectedItemQuestion: aQuestion

	| answer |
	
	self votedChoiceList: OrderedCollection new.
	"ifAbsent to surpress expected KeyNotFoundError"
	answer := (pollAnswer answers at: (aQuestion id) ifAbsent: []).

	answer ifNotNil: [
		self votedChoiceList add: answer votedChoice.
	].

	selectedItemQuestion := aQuestion.
	self changed: #selectedItemQuestion.
	(aQuestion notNil) ifTrue: [
			self choiceList: aQuestion choiceList.
			self changed: #choiceList.
			self changed: #votedChoiceList.
	]