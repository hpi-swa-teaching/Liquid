tests
testClipboardImport
	"The functionality tested here is no longer used by Liquid. Leaving the test since it should still work"
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