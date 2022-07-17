test
testColourGray

	self assert: (((self exclusionMarker colourGrey: 'Hallo') attributesAt: 1)  includes: (TextColor gray)).
	self assert: (((self exclusionMarker colourGrey: 'Hallo') attributesAt: 2)  includes: (TextColor gray)).
	self assert: (((self exclusionMarker colourGrey: 'Hallo') attributesAt: 3)  includes: (TextColor gray)).
	self assert: (((self exclusionMarker colourGrey: 'Hallo') attributesAt: 4)  includes: (TextColor gray)).
	self assert: (((self exclusionMarker colourGrey: 'Hallo') attributesAt: 5)  includes: (TextColor gray)).
	self assert: (((self exclusionMarker colourGrey: 'Lieblingseis') attributesAt: 7)  includes: (TextColor gray))