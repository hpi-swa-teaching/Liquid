query
availableGroups

	^ ((self userEntries collect: [:user | user group]) asSet) asSortedCollection