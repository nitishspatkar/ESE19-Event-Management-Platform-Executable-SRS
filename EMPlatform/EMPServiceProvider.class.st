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
EMPServiceProvider >> add: aService forwardTo: anAdmin of: anApp [
	self add: aService.
	self forward: aService to: anAdmin of: anApp
]

{ #category : #accessing }
EMPServiceProvider >> forward: aService to: anAdmin of: anApp [
	anAdmin accept: aService for: anApp
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
