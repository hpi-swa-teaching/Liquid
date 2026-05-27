accessing
isInLiveEditMode: aBoolean
	isInLiveEditMode := aBoolean.
	self questionBuilders do: [:qb | qb isInLiveEditMode: aBoolean]
