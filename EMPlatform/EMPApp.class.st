Class {
	#name : #EMPApp,
	#superclass : #Object,
	#instVars : [
		'users',
		'services'
	],
	#category : #EMPlatform
}

{ #category : #adding }
EMPApp >> addUser: aUser [
	self users at: aUser username put: aUser.
]

{ #category : #accessing }
EMPApp >> initialize [
	super initialize.
	users := OrderedDictionary  new.
	services := OrderedCollection new
]

{ #category : #'as yet unclassified' }
EMPApp >> login: username with: password [
	self users at: username
		ifPresent: [ :user | 
			user password = password
				ifTrue: [ user isLogged: true ]
				ifFalse: [ self inform: 'Incorrect password' ] ]
		ifAbsent: [ self inform: 'user is not registered' ].
]

{ #category : #registry }
EMPApp >> register: user [
	self addUser: user.
]

{ #category : #accessing }
EMPApp >> services [
	^ services
]

{ #category : #accessing }
EMPApp >> users [
	^ users
]
