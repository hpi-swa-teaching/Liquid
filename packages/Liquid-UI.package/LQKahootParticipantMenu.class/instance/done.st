modifying
done

	| message |
	message := String streamContents: [:stream |
		stream nextPutAll: 'You have completed the Kahoot!'; cr; cr.
		stream nextPutAll: 'Final standings:'; cr.
		self leaderboard do: [:line | stream nextPutAll: line; cr]].
	UIManager default inform: message.
	self destroy.
	ToolBuilder open: LQStartMenu new
