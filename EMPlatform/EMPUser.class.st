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
EMPUser >> appAccess: aBoolean [
	appAccess := aBoolean
]

{ #category : #accessing }
EMPUser >> initialize [
	appAccess := false
]

{ #category : #accessing }
EMPUser >> login: aUsername with: aPassword [
	"Check provided username and password, if they match then set the appAccess flag to true for that user"

	MyApp users
		do: [ :each | 
			each username = aUsername
				ifTrue: [ each password = aPassword
						ifTrue: [ each appAccess: true.
							self inform: 'Credentials match' ]
						ifFalse: [ self inform: 'Wrong credentials!' ] ] ]
]

{ #category : #accessing }
EMPUser >> loginExample [
	<gtExample>
	| uName pwd |
	uName := 'testUsername1'.
	pwd := 'testPassword1'.
	MyApp users
		do: [ :each | 
			each username = 'testUsername1'
				ifTrue: [ each password = 'testPassword1'
						ifTrue: [ each appAccess: true.
							self inform: 'Credentials match' ]
						ifFalse: [ self inform: 'Wrong credentials!' ] ] ]
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
EMPUser >> register: aName username: aUsername password: aPassword [
	"Add new user to the app with its name, username, password"

	| newUser |
	newUser := EMPUser new.
	newUser
		name: aName;
		username: aUsername;
		password: aPassword.
	MyApp users addAll: {newUser}.
	^ newUser
]

{ #category : #accessing }
EMPUser >> registerExample [
	<gtExample>
	| newUser1 newUser2 |
	newUser1 := EMPUser new.
	newUser2 := EMPUser new.
	newUser1
		name: 'Nitish';
		username: 'testUsername1';
		password: 'testPassword1'.
	newUser2
		name: 'Rahul';
		username: 'testUsername2';
		password: 'testPassword2'.
	MyApp users
		addAll:
			{newUser1.
			newUser2}.
	^ {newUser1.
	newUser2}
]

{ #category : #accessing }
EMPUser >> username [
	^ username
]

{ #category : #accessing }
EMPUser >> username: aString [
	username := aString
]
