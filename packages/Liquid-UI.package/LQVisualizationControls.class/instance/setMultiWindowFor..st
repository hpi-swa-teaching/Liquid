toolbuilder
setMultiWindowFor: windowSpec
	"set the multi-window style for the windowSpec according to both the users preference and the browser's ability"
	(self class canUseMultiWindowBrowsers and: [self class useMultiWindowBrowsers])
		ifTrue: [windowSpec multiWindowStyle: #labelButton]