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
	MyAdmin serviceRequests
		addAll:
			{newService1.
			newService2}.
	"MyApp services addAll: {newService}."
	^ {newService1.
	newService2}
]
