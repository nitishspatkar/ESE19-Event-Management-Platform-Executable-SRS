Class {
	#name : #EMPAppExample,
	#superclass : #Object,
	#instVars : [
		'app'
	],
	#category : #'EMPlatform-Examples'
}

{ #category : #'as yet unclassified' }
EMPAppExample >> app [
	<gtExample>

	app isNil
		ifTrue: [ app := EMPApp new ]
		ifFalse: [ app ].
	^ app
]

{ #category : #'as yet unclassified' }
EMPAppExample >> endUser [
	<gtExample>
		^ EMPUserExample new endUser.
]

{ #category : #'as yet unclassified' }
EMPAppExample >> loginEndUser [
	<gtExample>
	self registerEndUser.
	^ (self app login: self endUser username with: self endUser password) users at: (self endUser username)

]

{ #category : #'as yet unclassified' }
EMPAppExample >> loginServiceProvider [
	<gtExample>
	self registerServiceProvider.
	^ (self app login: self serviceProvider username with: self serviceProvider password) users at: (self serviceProvider username)
	 
]

{ #category : #'as yet unclassified' }
EMPAppExample >> registerEndUser [
	<gtExample>
	^ self app register: self endUser
]

{ #category : #'as yet unclassified' }
EMPAppExample >> registerServiceProvider [
	<gtExample>
	^ 	self app register: self serviceProvider.
]

{ #category : #'as yet unclassified' }
EMPAppExample >> serviceProvider [
	<gtExample>
		^ EMPUserExample new serviceProvider.
]

{ #category : #'as yet unclassified' }
EMPAppExample >> users [
	<gtExample>
	self registerEndUser.
	self registerServiceProvider.
	^ self app users
]
