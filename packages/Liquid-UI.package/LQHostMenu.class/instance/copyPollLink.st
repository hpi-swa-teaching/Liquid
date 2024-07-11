modifying
copyPollLink
	self currentPoll = 0
		ifFalse: [Clipboard clipboardText: self currentLink asText.
			"Interacting with clipboard takes a bit of time
			otherwise we get faulty results when quickly
			accessing the Clipboard afterwards"
			(Delay forSeconds: self clipboardDelay) wait]
		