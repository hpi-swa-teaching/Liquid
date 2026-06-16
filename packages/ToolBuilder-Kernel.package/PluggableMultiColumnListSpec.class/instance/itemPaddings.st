accessing
itemPaddings
	
	^ itemPaddings ifNil: [self itemPadding ifNil: [#()] ifNotNil: [:pad | {pad}]]