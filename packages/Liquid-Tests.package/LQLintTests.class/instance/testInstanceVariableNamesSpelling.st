spelling
testInstanceVariableNamesSpelling

	self assertAllZero: (self
		lint: #smallLintInstanceVariableNamesSpelling
		except: {LQUser. LQAnswerSet. LQKahootDraftBuilder})
	"kahoot isn't part of spellcheckers dictionary"