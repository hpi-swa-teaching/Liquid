accessing
displayString
       ^ self description ifNil: [''] ifNotNil: [:t | t asString]
