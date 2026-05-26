visualization
wordCloudSignatureFor: aDictionary

	^ (aDictionary associations sorted: [:a :b | a key <= b key])
		inject: '' into: [:sum :assoc | sum , assoc key , assoc value asString , '|']
