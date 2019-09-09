Class {
	#name : #ServicePosting,
	#superclass : #Object,
	#instVars : [
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

{ #category : #accessing }
ServicePosting >> initialize [
	description := nil
]
