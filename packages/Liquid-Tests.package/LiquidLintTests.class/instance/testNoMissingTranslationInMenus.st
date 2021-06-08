pharo
testNoMissingTranslationInMenus

	self assertAllZero: (self lint: #smallLintMethodSourceContainsLinefeeds)