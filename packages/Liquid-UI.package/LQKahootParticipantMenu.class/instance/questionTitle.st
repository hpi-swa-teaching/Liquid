toolbuilder
questionTitle

	^ self currentQuestion ifNil: ['Waiting for Kahoot to start...'] ifNotNil: [:q | q title]
