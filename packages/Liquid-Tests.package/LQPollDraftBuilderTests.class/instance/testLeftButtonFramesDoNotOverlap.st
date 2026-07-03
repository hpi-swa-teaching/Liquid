testing
testLeftButtonFramesDoNotOverlap
	| builder frames |
	builder := LQPollDraftBuilder new.
	
	frames := (1 to: builder numberOfLeftButtons) collect: [:index |
		builder leftButtonFrameForIndex: index ].
	
	1 to: frames size - 1 do: [:i |
		self assert: (frames at: i) bottomFraction <= (frames at: i + 1) topFraction.
	].