ui requests - progress
informUserDuring: aBlock
	"Display a message above (or below if insufficient room) the cursor 
	during execution of the given block.
		UIManager default informUserDuring:[:bar|
			#(one two three) do:[:info|
				bar value: info.
				(Delay forSeconds: 1) wait]]"
	^self subclassResponsibility