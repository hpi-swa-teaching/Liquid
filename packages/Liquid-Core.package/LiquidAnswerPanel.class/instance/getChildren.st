accessing
getChildren
	^ {self builder build: (self buildMultiChoiceListWith: self builder).
		"buildSingleChoiceList -> dependent on 'type' of the question"
		}