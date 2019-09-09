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
	appAccess := false
]

{ #category : #accessing }
EMPUser >> login: aUsername with: aPassword [
	"Check user id against provided username and password, if they match then set the appAccess flaf to true for that user"

]

{ #category : #accessing }
EMPUser >> loginExample [
<gtE>
| uname pwd |
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
	newUser1
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
EMPUser >> username: aString [
	username := aString
]
