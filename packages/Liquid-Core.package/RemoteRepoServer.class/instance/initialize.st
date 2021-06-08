as yet unclassified
initialize
	super initialize.
	
	objectRepo := LocalObjectRepo new.
	
	self addService: '/ws' action: [:req | self websocket: (req asWebSocket) withRequest: req ].
	self addService: '/' action: [:req | self onRequest: req] methods: #('POST' 'PUT' 'GET').