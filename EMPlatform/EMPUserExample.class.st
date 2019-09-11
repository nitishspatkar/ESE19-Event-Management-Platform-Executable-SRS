Class {
	#name : #EMPUserExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #accessing }
EMPUserExample >> name [
	<gtExample>
		 ^ self user name: 'Nitish'.
]

{ #category : #accessing }
EMPUserExample >> user [
	<gtExample>
		 ^ EMPEndUser with:'usrname' and: 'pasword'.
]
