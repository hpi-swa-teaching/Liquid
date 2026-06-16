system introspecting
classFromPattern: pattern withCaption: aCaption in: anEnvironment
	"If there is a class or trait whose name exactly given by pattern, return it.
	If there is only one class or trait in the system whose name matches pattern, return it.
	Otherwise, put up a menu offering the names of all classes that match pattern, and return the class chosen, else nil if nothing chosen.
	This method ignores separator characters in the pattern"

	^self classOrTraitFrom: anEnvironment pattern: pattern label: aCaption
"
	for examples, see #classFromPattern:withCaption:
"
