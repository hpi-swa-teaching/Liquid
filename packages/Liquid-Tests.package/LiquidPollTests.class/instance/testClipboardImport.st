tests
testClipboardImport
	| poll randomID |
	randomID := UUID new asString.
	Clipboard clipboardText: randomID.
	
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	poll startWithId: randomID ifTaken: [:taken | self fail].
	
	self assert: ((PollRepo default at: Clipboard clipboardText ifAbsent: [:taken | self fail]) id) equals: poll id.