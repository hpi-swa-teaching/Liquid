accessing
size

	^ 0
	"If the first question is a FreeTextQuestion, the Pluggable-System will attempt to create a pluggableList from this class, which fails as this is not a Collection. Returning a size of zero will inhibit the creation of set pluggableList and suppresses the associated error."