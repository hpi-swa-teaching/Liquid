testing
testPDFEscapeUmlauts

	self assert: (self poll pdfEscape: 'äöüÄÖÜß Hallo') equals: '\344\366\374\304\326\334\337 Hallo'