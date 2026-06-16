building
buildAll: aList in: newParent
	"Build the given set of widgets in the new parent"
	| prior |
	aList ifNil:[^self].
	prior := parent.
	parent := newParent.
	aList do:[:each| each buildWith: self].
	parent := prior.
