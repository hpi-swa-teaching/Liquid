baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [spec
				baseline: 'StatisticsWorkbench'
				with: [spec repository: 'github://hpi-swa-teaching/StatisticsWorkbench:11245259c9fa9e0be1254a79ee744f28e56894d8/packages'];
				
				baseline: 'SwaLint'
				with: [spec repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
				
				baseline: 'Squot'
				with: [spec repository: 'github://hpi-swa/Squot:mapper/src'];
				
				
				package: 'Liquid-Core'
				with: [spec requires: #('libraries')];
				
				package: 'Liquid-Network'
				with: [spec requires: #('libraries')];
				
				package: 'Liquid-UI'
				with: [spec requires: #('libraries')];
				
				package: 'Liquid-Tests'
				with: [spec requires: #('SwaLint' 'default')];
				 yourself.
			spec group: 'libraries' with: #('StatisticsWorkbench' 'Squot');
				 group: 'default' with: #('Liquid-Core' 'Liquid-Network' 'Liquid-UI');
				 group: 'tests' with: #('Liquid-Tests')];
		 yourself