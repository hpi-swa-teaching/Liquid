printing
pdfEscape: aString

	| escaped from to |
	escaped := aString.
	from := #('\' '(' ')' 'ä' 'ö' 'ü' 'Ä' 'Ö' 'Ü' 'ß').
	to := #('\\' '\(' '\)' '\344' '\366' '\374' '\304' '\326' '\334' '\337').
	from with: to do: [:f :t | escaped := escaped copyReplaceAll: f with: t].
	^ escaped