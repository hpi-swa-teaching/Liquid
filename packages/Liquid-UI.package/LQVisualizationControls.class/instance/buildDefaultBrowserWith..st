toolbuilder
buildDefaultBrowserWith: builder
	"assemble the spec for a full system browser, build it and return the built but not opened morph"
	"this build-but-don't-open phase is factored out to support the prototypicalToolWindow facility"

	| max windowSpec |
	max := self wantsOptionalButtons ifTrue:[0.42] ifFalse:[0.5].

	windowSpec := self buildWindowWith: builder specs: {
		(self questionListFrame: max) -> [self buildQuestionListWith: builder].
	}.
	self setMultiWindowFor:windowSpec.

	^builder build: windowSpec