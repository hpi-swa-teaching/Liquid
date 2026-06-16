LQExportFormat is a class that contains methods that turn neutral table data (rows of strings) into formatted export text. It defines how fields and rows are separated and whether fields are quoted. 

Instance Variables
	delimiter:		<String>
	rowSeparator:		<String>
	shouldQuote:		<Boolean>

delimiter
	- the string put between the fields of a row (for example ',' for CSV).

rowSeparator
	- the string put between rows (for example cr+lf for CSV).

shouldQuote
	- whether a field is wrapped in double quotes when it contains the delimiter, a quote or a line break.
