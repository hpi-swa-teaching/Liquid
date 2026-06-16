builder
builderClass
	"Answer the kind of tool builder to use, possibly influenced by project preferences"
	^ builderClass ifNil: [ builderClass := ToolBuilder findDefault ]