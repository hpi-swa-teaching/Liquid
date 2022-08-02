helper methods
checkEqualityOf: aLQUserSet and: anotherLQUserSet

	^(aLQUserSet id = anotherLQUserSet id)
		and: [aLQUserSet title = anotherLQUserSet title]
		and: [aLQUserSet userEntries size = anotherLQUserSet userEntries size]