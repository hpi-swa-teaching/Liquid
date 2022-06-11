initialize
initialize

	super initialize.
	self halt.
	objectRepo := LQLocalObjectRepo new.
	
	self addService: '/' action: [:req | self onRequest: req] methods: #('POST' 'PUT' 'GET')