printing
jsonEscape: aString

	| escaped from to |
	escaped := aString.
	from := {'\'. '"'. (String with: Character backspace). (String with: Character tab). (String with: Character lf). (String with: Character cr)}.
	to := #('\\' '\"' '\b' '\t' '\n' '\r').
	from with: to do: [:f :t | escaped := escaped copyReplaceAll: f with: t].
	^ escaped