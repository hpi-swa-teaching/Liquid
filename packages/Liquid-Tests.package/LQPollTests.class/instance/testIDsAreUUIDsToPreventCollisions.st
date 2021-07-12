tests
testIDsAreUUIDsToPreventCollisions	
	"This test ensures that all ID's used in Liquid are UUID's to avoid collisions"
	"isKindOf: is bad practice, but unfortunately UUID is missing a `isUUID` handler"
	self assert: [LiquidAnswer new id isKindOf: UUID].
	self assert: [LiquidChoicesAnswer new id isKindOf: UUID].
	self assert: [LiquidAnswerSet new id isKindOf: UUID].
	self assert: [LiquidPoll new id isKindOf: UUID].
	self assert: [LiquidPollDraft new id isKindOf: UUID].
	self assert: [LiquidQuestion new id isKindOf: UUID].
	self assert: [LiquidChoicesQuestion new id isKindOf: UUID].