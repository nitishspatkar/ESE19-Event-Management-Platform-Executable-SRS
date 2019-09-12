Class {
	#name : #EMPServiceProvider,
	#superclass : #EMPUser,
	#instVars : [
		'services'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPServiceProvider >> add: aService to: anApp [
	anApp users
		do: [ :each | 
			(each isKindOf: EMPServiceProvider)
				ifTrue: [ each isLogged = true
						ifTrue: [ each services add: aService ] ]
				ifFalse: [ self inform: 'Not logged in' ] ].
]

{ #category : #accessing }
EMPServiceProvider >> addCateringServiceExample [
	<gtExample>
	| aCateringService |
	aCateringService := CateringPosting new.
	aCateringService description: 'Catering service sample description'.
	"Check if the user is a service provider and logged in - we have only one"
	self add: aCateringService.
]

{ #category : #accessing }
EMPServiceProvider >> addServiceExample [
	<gtExample>
	| newService1 newService2 |
	newService1 := CateringPosting new.
	newService2 := VenuePosting new.
	newService1 description: 'sample catering service description'.
	"Check if the service provider is logged in, otherwise he cannot post a request"
	isLogged = true
		ifTrue: [ MyAdmin serviceRequests
				addAll:
					{newService1.
					newService2} ]
		ifFalse: [ self inform: 'Please login' ].
	^ {newService1.
	newService2}
]

{ #category : #accessing }
EMPServiceProvider >> addVenueServiceExample [
	<gtExample>
	| aVenueService |
	aVenueService := VenuePosting new.
	"Check if the user is a service provider and logged in - we have only one"
	MyApp users
		do: [ :each | 
			(each isKindOf: EMPServiceProvider)
				ifTrue: [ each isLogged = true
						ifTrue: [ each username = 'testUsername4'
								ifTrue: [ each services add: aVenueService ] ] ]
				ifFalse: [ self inform: 'Not logged in' ] ].
	"Also send this posting to admin for approval"
	MyAdmin serviceRequests add: aVenueService
]

{ #category : #accessing }
EMPServiceProvider >> forward: aService to: admin [
	"Also send this posting to admin for approval"

	admin accept: aService
]

{ #category : #accessing }
EMPServiceProvider >> initialize [
	super initialize.
	services := OrderedCollection new
]

{ #category : #accessing }
EMPServiceProvider >> services [
	^ services
]
