"
! I am a service provider

I create ${class:name=ServicePosting}$ only i when I am logged in:

${example:name=EMPServiceProviderExample>>#addService}$

I can create a service when I am logged in:

${example:name=EMPServiceProviderExample>>#addServiceForLoggedInServiceProvider}$

"
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
	anAdmin validate: aService for: anApp
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
