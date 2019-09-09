Class {
	#name : #EMPAdmin,
	#superclass : #EMPUser,
	#instVars : [
		'serviceRequests'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPAdmin >> initialize [
	super initialize.
	serviceRequests := OrderedCollection new
]

{ #category : #accessing }
EMPAdmin >> serviceRequests [
	^ serviceRequests
]
