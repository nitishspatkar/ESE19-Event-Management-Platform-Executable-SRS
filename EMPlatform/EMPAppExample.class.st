Class {
	#name : #EMPAppExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #'as yet unclassified' }
EMPAppExample >> app [
	<gtExample>
		^ EMPApp new.
]

{ #category : #'as yet unclassified' }
EMPAppExample >> login [
	<gtExample>
		^ self app login: (self user username) with: (self user password).
]

{ #category : #'as yet unclassified' }
EMPAppExample >> register [
	<gtExample>
		^ self app register: self user.
]

{ #category : #'as yet unclassified' }
EMPAppExample >> user [
	<gtExample>
		^ EMPUserExample new user.
]

{ #category : #'as yet unclassified' }
EMPAppExample >> users [
	<gtExample>
		^ self app users.
]
