"
! I am an admin

I am responsible for accepting or rejecting services created by ${class:name=EMPServiceProvider}$ to limit spams on the ${class:name=EMPApp}$:

${example:name=EMPAdminExample>>#acceptedServiceByAdmin}$
"
Class {
	#name : #EMPAdmin,
	#superclass : #EMPUser,
	#instVars : [
		'app'
	],
	#category : #'EMPlatform-Model'
}

{ #category : #'as yet unclassified' }
EMPAdmin class >> with:username and: password of: anApp [
|user|
	user := self new username: username;password:password.
	user app: anApp.
	^ user
]

{ #category : #'as yet unclassified' }
EMPAdmin >> accept: aService for: anApp [
	aService publishedFlag: true.
	anApp addService: aService
]

{ #category : #'as yet unclassified' }
EMPAdmin >> app [ 
	^ app
]

{ #category : #'as yet unclassified' }
EMPAdmin >> app: anApp [
	 app := anApp.
]

{ #category : #accessing }
EMPAdmin >> initialize [
	super initialize.
	isLogged := true.
]

{ #category : #'as yet unclassified' }
EMPAdmin >> reject: aService [
	aService inform: [ 'Service is not accepted' ]
]

{ #category : #'as yet unclassified' }
EMPAdmin >> validate: aService for: anApp [
	aService hasDescription
		ifTrue: [ self accept: aService for: anApp ]
		ifFalse: [ self inform: 'Description missing' ]
]
