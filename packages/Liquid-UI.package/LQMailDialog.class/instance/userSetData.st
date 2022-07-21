modifying
userSetData

	^self poll myUserSet userEntries collect: [:user | user mail] "Change to Mail"