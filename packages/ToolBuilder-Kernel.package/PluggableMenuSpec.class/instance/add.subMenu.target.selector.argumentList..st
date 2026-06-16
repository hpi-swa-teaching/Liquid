construction
add: aString subMenu: aMenu target: target selector: aSymbol argumentList: argList
	"Create a sub-menu with the given label. This isn't really a sub-menu the way Morphic does it; it'll just pop up another menu."

	self
		add: aString
		target: aMenu
		selector: #invokeOn:
		argumentList: argList asArray.