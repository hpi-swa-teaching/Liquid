ui requests - progress
informUser: aString during: aBlock
	"Display a message above (or below if insufficient room) the cursor 
	during execution of the given block.
		Project uiManager informUser: 'Just a sec!' during: [1 second wait].
		Project uiManager informUser: 'Just a sec!' during: [:bar | 1 second wait. bar value: 'Or maybe one more!'. 1 second wait].
	"
	^self informUserDuring: [:bar | bar value: aString. aBlock cull: bar]