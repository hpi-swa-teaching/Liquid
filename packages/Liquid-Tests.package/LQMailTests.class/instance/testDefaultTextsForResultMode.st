testing
testDefaultTextsForResultMode

	| dialog |
	dialog := LQMailDialog new.
	dialog isResultMail: true.
	self assert: dialog mailSubject equals: LQMailDialog defaultResultSubject.
	self assert: dialog rawMailText equals: LQMailDialog defaultResultMailText