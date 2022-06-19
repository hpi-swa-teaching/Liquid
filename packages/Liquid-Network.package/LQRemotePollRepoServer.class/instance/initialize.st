initialize
initialize

	super initialize.
	
	"objectRepo := LQLocalObjectRepo new.""LQPollRepo default."
	
	self addService: '/' action: [:req | self onRequest: req] methods: #('POST' 'PUT' 'GET')