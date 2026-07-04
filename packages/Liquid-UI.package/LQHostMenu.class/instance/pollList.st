accessing
pollList

	^ (LQRemotePollRepoServer pollRepo items values select: [:each | (each isKindOf: LQKahootQuiz) not]) asOrderedCollection
	"Keep Kahoot Quizes outside for now, as there is no VisualizationView or edit support yet"