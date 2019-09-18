Class {
	#name : #EMPUserExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #accessing }
EMPUserExample >> admin [
	<gtExample>
	^ EMPAdmin with: 'admin' and: 'admin' of: EMPAppExample new app.
]

{ #category : #'as yet unclassified' }
EMPUserExample >> allServices [
	<gtExample>
	| anApp endUser |
	anApp := EMPServiceProviderExample new addAndPublishTwoServices.
	endUser := self endUser.
	^ endUser allServicesIn: anApp
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
