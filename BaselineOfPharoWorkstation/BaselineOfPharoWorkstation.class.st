Class {
	#name : #BaselineOfPharoWorkstation,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoWorkstation
}

{ #category : #accessing }
BaselineOfPharoWorkstation >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
				"Current Projects"
				baseline: 'Fiat' with: [ spec repository: 'github://emdonahue/Fiat' ];
				baseline: 'CCG' with: [ spec repository: 'github://emdonahue/CCG' ];
				baseline: 'Barliman' with: [ spec repository: 'github://emdonahue/Barliman' ];

				"Utilities"
				baseline: 'ABBench' with: [ spec repository: 'github://emdonahue/ABBench' ]; 
				baseline: 'Cons' with: [ spec repository: 'github://emdonahue/Cons' ];
				baseline: 'Contracts' with: [ spec repository: 'github://emdonahue/Contracts' ];			
				baseline: 'SmallKanren' with: [ spec repository: 'github://emdonahue/SmallKanren' ];
				
				package: 'PharoWorkstation' with: [ spec requires: #('ABBench' 'Cons' 'Contracts' 'SmallKanren') , #('CCG' 'Barliman') ]
	 ]
]

{ #category : #accessing }
BaselineOfPharoWorkstation >> projectClass [
	^ MetacelloCypressBaselineProject
]
