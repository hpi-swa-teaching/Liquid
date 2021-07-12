tests
testClipboardImport
	| poll randomID client |
	client := LocalObjectRepo new.
	randomID := UUID new asString.
	Clipboard clipboardText: randomID.

	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	client 
		at: randomID 
		ifPresent: [self fail: 'Poll ID already taken'] 
		ifAbsentPut: poll.

	self assert: ((client at: Clipboard clipboardText ifAbsent: [self fail: 'Poll not found at given ID']) id) equals: poll id. 