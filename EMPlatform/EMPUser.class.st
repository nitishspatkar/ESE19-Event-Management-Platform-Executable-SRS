Class {
	#name : #EMPUser,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'username',
		'password'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPUser >> name: aString [
	name := aString
]

{ #category : #accessing }
EMPUser >> password: aString [
	password := aString
]

{ #category : #accessing }
EMPUser >> register: aName username: aUsername password: aPassword [
	| newUser |
	newUser := EMPUser new.
	newUser
		name: aName;
		username: aUsername;
		password: aPassword.
	^ newUser
]

{ #category : #accessing }
EMPUser >> username: aString [
	username := aString
]
