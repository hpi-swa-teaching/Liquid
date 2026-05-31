accessing
fullName

    ^ (self firstname ifNil: ['']), ' ', (self surname ifNil: [''])