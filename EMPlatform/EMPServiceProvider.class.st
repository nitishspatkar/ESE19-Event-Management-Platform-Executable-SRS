Class {
	#name : #EMPServiceProvider,
	#superclass : #EMPUser,
	#instVars : [
		'service'
	],
	#category : #EMPlatform
}

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
EMPServiceProvider >> addServiceWhenLoggedInExample [
	<gtExample>
	| newService1 newService2 |
	newService1 := CateringPosting new.
	newService2 := VenuePosting new.
	newService1 description: 'sample catering service description'.
	"Check if the service provider is logged in (we will pick the one who has logged in already for the sake of this example), otherwise he cannot post a request"
	MyApp users
		do: [ :each | 
			each appAccess = true
				ifTrue: [ MyAdmin serviceRequests
						addAll:
							{newService1.
							newService2} ]
				ifFalse: [ self inform: 'Please login' ] ].
	^ {newService1.
	newService2}
]
