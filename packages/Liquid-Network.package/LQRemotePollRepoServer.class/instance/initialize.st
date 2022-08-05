initialize
initialize

	super initialize.
	
	self addService: '/' action: [:req | self onRequest: req] methods: #('POST' 'GET')