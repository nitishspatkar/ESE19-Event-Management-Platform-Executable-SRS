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
	#category : #EMPlatform
}

{ #category : #'as yet unclassified' }
EMPUser class >> with:username and: password [
^ self new username: username;password:password
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
