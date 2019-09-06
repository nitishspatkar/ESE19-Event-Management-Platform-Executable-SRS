Class {
	#name : #EMPUser,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'username',
		'password',
		'token',
		'appAccess'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPUser >> initialize [
	super initialize.
	id := id + 1
]

{ #category : #accessing }
EMPUser >> login: aUsername with: aPassword [
	"Check user id against provided username and password, if they match then set the appAccess flaf to true for that user"

]

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
	"Add new user to the app with its name, username, password, and id"

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
