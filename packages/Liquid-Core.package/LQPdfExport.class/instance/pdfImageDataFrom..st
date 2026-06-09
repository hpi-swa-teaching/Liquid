printing
pdfImageDataFrom: aForm
	"Read every pixel of the form and return the colors as raw bytes (red, green, blue) per pixel, row by row. Transparent pixels become
	white, os that they are not black in pdf."

	| form stream |
	form := aForm.
	stream := WriteStream on: String new.
	
	0 to: form height - 1 do: [:y |
		0 to: form width - 1 do: [:x | | c |
			c := form colorAt: x @ y.
			c isTransparent ifTrue: [c := Color white].
			stream nextPut: (Character value: (c red * 255) truncated).
			stream nextPut: (Character value: (c green * 255) truncated).
			stream nextPut: (Character value: (c blue * 255) truncated)]].
	^ stream contents