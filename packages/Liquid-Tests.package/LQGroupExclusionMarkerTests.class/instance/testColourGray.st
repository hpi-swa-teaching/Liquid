testing
testColourGray
	
	| string1 |
	
	string1 := 'Lieblingseis'.
	(self exclusionMarker colourGrey: string1) runs do: 
		[:attribute | 
		self assert: (attribute includes: (TextColor gray))].