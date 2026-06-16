ui project indirecting
startUpMenu: aMenu withCaption: captionOrNil icon: aForm at: location allowKeyboard: aBoolean
	"A menu needs to startup and depends on the current type of ui manager for what sort of startup to do. Very ugly, and really needs replacing with a much better menu system"
	
	^self subclassResponsibility
	