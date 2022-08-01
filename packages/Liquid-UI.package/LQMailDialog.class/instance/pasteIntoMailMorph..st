toolbuilder
pasteIntoMailMorph: aString
	
	Clipboard clipboardText: aString.
	"Interacting with clipboard takes a bit of time otherwise we get faulty results when quickly accessing the Clipboard afterwards"
	(Delay forSeconds: 0.10) wait.
	self mailMorph setText: self rawMailText asText.
	self mailMorph paste.
	self rawMailText: self mailMorph textMorph text string