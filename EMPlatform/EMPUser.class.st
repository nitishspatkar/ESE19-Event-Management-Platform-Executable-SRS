"
! I am a user

I can be an ${class:name=EMPAdmin}$ or a ${class:name=EMPServiceProvider}$ or an ${class:name=EMPEndUser}$.
As an each type of user, I have different responsibilities.


"
Class {
	#name : #EMPUser,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'username',
		'password',
		'isLogged'
	],
	#category : #'EMPlatform-Model'
}

{ #category : #'as yet unclassified' }
EMPUser class >> with:username and: password [
^ self new username: username;password:password
]

{ #category : #printing }
EMPUser >> gtDisplayText [
	^ self username
]

{ #category : #'as yet unclassified' }
EMPUser >> gtIsLoggedFor: aView [
	<gtView>
	
	^ (self isLogged gtLiveFor: aView)
		title: 'Logged';
		priority: '2'
]

{ #category : #accessing }
EMPUser >> initialize [
	isLogged := false.
]

{ #category : #accessing }
EMPUser >> isLogged [
	^ isLogged 
]

{ #category : #accessing }
EMPUser >> isLogged: aBoolean [
	isLogged := aBoolean
]

{ #category : #accessing }
EMPUser >> name: aString [
	name := aString
]

{ #category : #accessing }
EMPUser >> password [
	^ password
]

{ #category : #accessing }
EMPUser >> password: aString [
	password := aString
]

{ #category : #accessing }
EMPUser >> username [
	^ username
]

{ #category : #accessing }
EMPUser >> username: aString [
	username := aString
]
