ui requests - code
chooseClassOrTraitFrom: anEnvironment
	"Let the user choose a Class or Trait from the given environment"
	
	^self chooseClassOrTrait: 'Class name or fragment?' from: anEnvironment withRecentList: nil