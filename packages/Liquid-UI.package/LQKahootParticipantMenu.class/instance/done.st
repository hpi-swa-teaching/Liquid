modifying
done

	| message |
	self stopMusic.
	message := String streamContents: [:stream |
		stream nextPutAll: 'You have completed the Kahoot!'; cr; cr.
		stream nextPutAll: 'Final standings:'; cr.
		self leaderboard do: [:line | stream nextPutAll: line; cr]].
	self destroy.
	UIManager default inform: message.
	ToolBuilder open: LQStartMenu new
