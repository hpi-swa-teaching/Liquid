toolbuilder
pasteIntoMailMorph: aString
	
	Clipboard clipboardText: aString.
	"Interacting with clipboard takes a bit of time otherwise we get faulty results when quickly accessing the Clipboard afterwards"
	(Delay forSeconds: 0.10) wait.
	self getMailMorph setText: self rawMailText asText.
	self getMailMorph paste.
	self rawMailText: self getMailMorph textMorph text string