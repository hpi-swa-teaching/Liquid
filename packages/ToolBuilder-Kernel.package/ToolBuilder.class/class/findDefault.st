accessing
findDefault
	"Answer a default tool builder"
	| builderClass |
	"Note: The way the following is phrased ensures that you can always make 'more specific' builders merely by subclassing a tool builder and implementing a more specific way of reacting to #isActiveBuilder. For example, a BobsUIToolBuilder can subclass MorphicToolBuilder and (if enabled, say Preferences useBobsUITools) will be considered before the parent (generic MorphicToolBuilder)."
	builderClass := self allSubclasses 
		detect:[:any| any isActiveBuilder and:[
			any subclasses noneSatisfy:[:sub| sub isActiveBuilder]]] ifNone:[nil].
	builderClass ifNotNil: [^builderClass ].
	^self error: 'ToolBuilder not found'