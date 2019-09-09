Class {
	#name : #ServicePosting,
	#superclass : #Object,
	#instVars : [
		'id',
		'description'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
ServicePosting >> description [
	^ description
]

{ #category : #accessing }
ServicePosting >> description: someText [
	description := someText
]
