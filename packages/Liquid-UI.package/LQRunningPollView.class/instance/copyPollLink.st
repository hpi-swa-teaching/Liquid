modifying
copyPollLink

	Clipboard clipboardText: (self pollId asText).
	"Interacting with clipboard takes a bit of time otherwise we get faulty results when quickly accessing the Clipboard afterwards"
	(Delay forSeconds: self clipboardDelay) wait