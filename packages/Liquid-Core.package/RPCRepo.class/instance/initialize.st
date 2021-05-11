as yet unclassified
initialize
	super initialize.
	
	items := Dictionary new.
	
	self addService: '/' action: [:req | self onRequest: req] methods: #('POST' 'PUT' 'GET')