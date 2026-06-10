visualization
wordCloudCollides: aMorph on: aCloudMorph

	^ aCloudMorph submorphs anySatisfy: [:existing | existing bounds intersects: aMorph bounds]
