Class {
	#name : #EMPUserExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #accessing }
EMPUserExample >> admin [
	<gtExample>
	^ EMPAdmin with: 'nit' and: 'ish' of: EMPApp new.
]

{ #category : #accessing }
EMPUserExample >> endUser [
	<gtExample>
		 ^ EMPEndUser with:'Nelson' and: 'nelson456'.
]

{ #category : #accessing }
EMPUserExample >> name [
	<gtExample>
		 ^ self endUser name: 'Nitish'.
]

{ #category : #accessing }
EMPUserExample >> serviceProvider [
	<gtExample>
	
	^ EMPServiceProvider with:'Max' and: 'max123'.
]
