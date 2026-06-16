ui requests - code
chooseClassOrTrait: label from: environment withRecentList: ignored
	"Let the user choose a Class or Trait."
	
	| pattern |
	pattern := self request: label.
	^ self classOrTraitFrom: environment pattern: pattern label: label
	