instance creation
newWithPoll: aPoll

	| pollVisualization |

	pollVisualization := self new.
	pollVisualization	poll: aPoll.
		
	^ pollVisualization
