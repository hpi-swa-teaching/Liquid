class initialization
getDefault
	"Ensure that a more specific manager can always be made by subclassing
	a tool builder and implementing a more specific way of reacting to
	#isActiveManager. For example, a BobsUIManager can subclass
	MorphicUIManager and (if enabled, say Preferences useBobsUI) will
	be considered before the parent (generic MorphicUIManager)."

	^ (self allSubclasses
		detect: [:any | any isActiveManager
				and: [any subclasses
						noneSatisfy: [:sub | sub isActiveManager]]]
		ifNone: [])
		ifNotNil: [:mgrClass | mgrClass new]