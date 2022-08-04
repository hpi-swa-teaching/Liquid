The LQPortAssigner is used by all tests needing to etablish a connection to a RemoteRepoServer. It provides each test with a new port to avoid collisions.

Class Variables
	LastPort: 		aNumber

LastPort
	the Port that was assigned the last time
	