Class {
	#name : #EMPServiceProvider,
	#superclass : #EMPUser,
	#instVars : [
		'service'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPServiceProvider >> addCateringService [
	| newService |
	newService := CateringPosting new.
	newService description: 'sample service description'.
	MyAdmin serviceRequests addAll: {newService}
]

{ #category : #accessing }
EMPServiceProvider >> addCateringServiceExample [
	<gtExample>
	| newService |
	newService := CateringPosting new.
	newService description: 'sample service description'.
	MyApp services addAll: {newService}.
	MyAdmin serviceRequests addAll: {newService}
]

{ #category : #accessing }
EMPServiceProvider >> addVenueService [
	| aVenue |
	aVenue := VenuePosting new.
	service := aVenue
]
