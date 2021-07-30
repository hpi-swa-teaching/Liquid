initialize
initialize

	super initialize.
	
	objectRepo := LQLocalObjectRepo new.
	
	self addService: '/' action: [:req | self onRequest: req] methods: #('POST' 'PUT' 'GET')