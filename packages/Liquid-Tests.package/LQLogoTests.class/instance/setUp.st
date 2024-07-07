running
setUp
	| instanceProto |
	super setUp.
	instanceProto := LQLogo new.
	instanceProto logoMorph: nil.
	self instance: instanceProto