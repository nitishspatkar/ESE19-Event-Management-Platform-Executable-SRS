Class {
	#name : #ServicePosting,
	#superclass : #Object,
	#instVars : [
		'description',
		'publishedFlag'
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
	description := ''.
	publishedFlag := false
]

{ #category : #accessing }
ServicePosting >> publishedFlag [
	^ publishedFlag
]

{ #category : #accessing }
ServicePosting >> publishedFlag: aBoolean [
	publishedFlag := aBoolean
]
