as yet unclassified
initialize
	super initialize.
	
	objectRepo := LocalObjectRepo new.
	
	self addService: '/' action: [:req | self onRequest: req] methods: #('POST' 'PUT' 'GET')