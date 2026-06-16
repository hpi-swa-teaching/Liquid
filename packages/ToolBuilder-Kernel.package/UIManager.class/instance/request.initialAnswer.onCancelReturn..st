ui requests - text
request: queryString initialAnswer: defaultAnswer onCancelReturn: cancelResponse
	"Create an instance of me whose question is queryString with the given initial answer. Answer the string the user accepts. Answer cancelResponse if the user cancels."

	^ self request: queryString initialAnswer: defaultAnswer