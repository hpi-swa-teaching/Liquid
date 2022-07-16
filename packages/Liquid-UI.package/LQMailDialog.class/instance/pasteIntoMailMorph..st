toolbuilder
pasteIntoMailMorph: aString
	
	Clipboard clipboardText: aString.
	self getMailMorph setText: self rawMailText asText.
	self getMailMorph paste.
	self rawMailText: self getMailMorph textMorph text string