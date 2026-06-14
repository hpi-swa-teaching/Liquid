printing
pdfImageBodyFor: aChart
	"Build the XObject as a dictionary describing the picture and using the red,green, blue bytes."

	| form image |
	form := aChart asFormOfDepth: 32.
	image := self pdfImageDataFrom: form.
	^ '<< /Type /XObject /Subtype /Image /Width ', form width asString,
		' /Height ', form height asString,
		' /ColorSpace /DeviceRGB /BitsPerComponent 8 /Length ', image size asString, ' >>', String lf,
		'stream', String lf, image, String lf, 'endstream'