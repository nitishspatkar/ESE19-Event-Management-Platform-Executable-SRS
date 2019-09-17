Class {
	#name : #BaselineOfEMPlatform,
	#superclass : #BaselineOf,
	#category : #BaselineOfEMPlatform
}

{ #category : #baselines }
BaselineOfEMPlatform >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec baseline: 'GToolkit' with: [ spec repository: 'github://feenkcom/gtoolkit/src' ].
		spec package: 'EMPlatform' with: [ spec requires: #('GToolkit') ] ]
]
