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
EMPUser >> loginUser1Example [
	<gtExample>
	| uName pwd |
	uName := 'testUsername1'.
	pwd := 'testPassword1'.
	MyApp users
		do: [ :each | 
			each username = 'testUsername1'
				ifTrue: [ each password = 'testPassword1'
						ifTrue: [ each isLogged: true.
							self inform: 'Credentials match' ]
						ifFalse: [ self inform: 'Wrong credentials!' ] ] ]
]

{ #category : #accessing }
EMPUser >> loginUser4Example [
	<gtExample>
	| uName pwd |
	uName := 'testUsername4'.
	pwd := 'testPassword4'.
	MyApp users
		do: [ :each | 
			each username = 'testUsername4'
				ifTrue: [ each password = 'testPassword4'
						ifTrue: [ each isLogged: true.
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
	| newUser1 newUser2 newUser3 newUser4 |
	newUser1 := EMPServiceProvider new.
	newUser2 := EMPServiceProvider new.
	newUser3 := EMPEndUser new.
	newUser4 := EMPServiceProvider new.
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
	newUser4
		name: 'user4';
		username: 'testUsername4';
		password: 'testPassword4'.
	MyApp users
		addAll:
			{newUser1.
			newUser2.
			newUser3.
			newUser4}.
	^ {newUser1.
	newUser2.
	newUser3.
	newUser4}
]

{ #category : #accessing }
EMPUser >> username [
	^ username
]

{ #category : #accessing }
EMPUser >> username: aString [
	username := aString
]
