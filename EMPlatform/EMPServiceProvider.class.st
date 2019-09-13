Class {
	#name : #EMPServiceProvider,
	#superclass : #EMPUser,
	#instVars : [
		'services'
	],
	#category : #'EMPlatform-Model'
}

{ #category : #accessing }
EMPServiceProvider >> add: aService [

	self isLogged = true
		ifTrue: [ self services add: aService]
		ifFalse: [ self inform:'not added' ]
]

{ #category : #accessing }
EMPServiceProvider >> add: aService forwardTo: admin [

			self add: aService.
			self forward: aService to: admin.
]

{ #category : #accessing }
EMPServiceProvider >> forward: aService to: admin [
	"Also send this posting to admin for approval"

	admin accept: aService
]

{ #category : #accessing }
EMPServiceProvider >> initialize [
	super initialize.
	services := OrderedCollection new
]

{ #category : #accessing }
EMPServiceProvider >> services [
	^ services
]
