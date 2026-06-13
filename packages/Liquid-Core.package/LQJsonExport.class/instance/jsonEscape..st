printing
jsonEscape: aString

	| escaped from to |
	escaped := aString.
	from := { '\'. '"'. (String with: Character lf). (String with: Character cr). (String with: Character tab) }.
	to := #('\\' '\"' '\n' '\r' '\t').
	from with: to do: [:f :t | escaped := escaped copyReplaceAll: f with: t].
	^ escaped