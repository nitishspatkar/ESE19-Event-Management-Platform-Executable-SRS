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
EMPAdmin >> accept: aService [
	aService publishedFlag: true.
	self app services add: aService.
	
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
EMPAdmin >> validateService: aService [	
		aService hasDescription  ifTrue: [ self accept: aService ]
		
]
