Class {
	#name : #EMPServiceProvider,
	#superclass : #EMPUser,
	#instVars : [
		'postedService'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPServiceProvider >> addCateringServiceExample [
	<gtExample>
	| aCateringService |
	aCateringService := CateringPosting new.
	aCateringService description: 'Catering service sample description'.
	"Check if the user is a service provider and logged in - we have only one"
	MyApp users
		do: [ :each | 
			(each isKindOf: EMPServiceProvider)
				ifTrue: [ each appAccess = true
						ifTrue: [ each username = 'testUsername1'
								ifTrue: [ each postedService add: aCateringService ] ] ]
				ifFalse: [ self inform: 'Not logged in' ] ].
	"Also send this posting to admin for approval"
	MyAdmin serviceRequests add: aCateringService
]

{ #category : #accessing }
EMPServiceProvider >> addServiceExample [
	<gtExample>
	| newService1 newService2 |
	newService1 := CateringPosting new.
	newService2 := VenuePosting new.
	newService1 description: 'sample catering service description'.
	"Check if the service provider is logged in, otherwise he cannot post a request"
	appAccess = true
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
				ifTrue: [ each appAccess = true
						ifTrue: [ each username = 'testUsername4'
								ifTrue: [ each postedService add: aVenueService ] ] ]
				ifFalse: [ self inform: 'Not logged in' ] ].
	"Also send this posting to admin for approval"
	MyAdmin serviceRequests add: aVenueService
]

{ #category : #accessing }
EMPServiceProvider >> initialize [
	super initialize.
	postedService := OrderedCollection new
]

{ #category : #accessing }
EMPServiceProvider >> postedService [
	^ postedService
]
