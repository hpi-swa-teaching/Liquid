as yet unclassified
doesNotUnderstand: aMessage
	| resp |
	resp := WebClient httpPut: url,'/?id=',id,'&message=',(aMessage selector asString),'&args=',(STON toString: aMessage arguments) content: '' type: 'text/plain'.
	resp isSuccess ifTrue: [^ (STON fromString: resp content)] ifFalse: [ self error: resp content ]
	