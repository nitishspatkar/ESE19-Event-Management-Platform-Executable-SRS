Class {
	#name : #EMPApp,
	#superclass : #Object,
	#instVars : [
		'users',
		'services'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPApp >> initialize [
	super initialize.
	users := OrderedCollection new.
	services := OrderedCollection new
]

{ #category : #accessing }
EMPApp >> services [
	^ services
]

{ #category : #accessing }
EMPApp >> users [
	^ users
]
