accessing
columnResizings
	"For each column, define the horizontal resizing (or #hResizing) behavior. Choose from #rigid, #shrinkWrap, and #spaceFill."
	
	^ columnResizings ifNil: [#(spaceFill)]