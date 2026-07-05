testing
testDefaultTextsForInvitationMode

	| dialog |
	dialog := LQMailDialog new.
	self assert: dialog mailSubject equals: LQMailDialog defaultSubject.
	self assert: dialog rawMailText equals: LQMailDialog defaultMailText