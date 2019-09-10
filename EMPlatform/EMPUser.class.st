Class {
	#name : #EMPUser,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'username',
		'password',
		'appAccess'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPUser >> appAccess [
	^ appAccess
]

{ #category : #accessing }
EMPUser >> appAccess: aBoolean [
	appAccess := aBoolean
]

{ #category : #accessing }
EMPUser >> initialize [
	appAccess := false.
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
EMPUser >> registerExample [
	<gtExample>
	| newUser1 newUser2 newUser3 |
	newUser1 := EMPServiceProvider new.
	newUser2 := EMPServiceProvider new.
	newUser3 := EMPEndUser new.
	newUser1
		name: 'user1';
		username: 'testUsername1';
		password: 'testPassword1'.
	newUser2
		name: 'user2';
		username: 'testUsername2';
		password: 'testPassword2'.
	newUser3
		name: 'user3';
		username: 'testUsername2';
		password: 'testPassword2'.
	MyApp users
		addAll:
			{newUser1.
			newUser2.
			newUser3}.
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
