construction
addList: aList
	"Add the given items to this menu, where each item is a pair (<string> <actionSelector>)..  If an element of the list is simply the symobl $-, add a line to the receiver.  The optional third element of each entry, if present, provides balloon help."

	aList do: [:tuple |
		tuple == #-
			ifTrue: [self addSeparator]
			ifFalse:[ | item |
				item := self add: tuple first target: model selector: tuple second argumentList: #().
				tuple size > 2 ifTrue:[item help: tuple third withCRs]]]