Class {
	#name : #EMPUserExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #accessing }
EMPUserExample >> admin [
	<gtExample>
	^ EMPAdmin with: 'nit' and: 'ish'
]

{ #category : #accessing }
EMPUserExample >> endUser [
	<gtExample>
		 ^ EMPEndUser with:'usrname' and: 'pasword'.
]

{ #category : #accessing }
EMPUserExample >> name [
	<gtExample>
		 ^ self endUser name: 'Nitish'.
]

{ #category : #accessing }
EMPUserExample >> serviceProvider [
	<gtExample>
		 ^ EMPServiceProvider with:'nit' and: 'ish'.
]
