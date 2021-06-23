accessing
getChildren
	^ {self builder build: (self buildMultiSelectionListWith: self builder).
		"buildSingleChoiceList -> dependent on 'type' of the question"
		}