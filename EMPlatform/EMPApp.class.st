Class {
	#name : #EMPApp,
	#superclass : #Object,
	#instVars : [
		'users'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPApp >> initialize [
	super initialize.
	users := OrderedCollection new
]
