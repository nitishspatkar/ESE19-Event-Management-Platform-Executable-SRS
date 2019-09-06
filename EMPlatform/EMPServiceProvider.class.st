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
	| aCateringService |
	aCateringService := CateringPosting new.
	service := aCateringService
]

{ #category : #accessing }
EMPServiceProvider >> addVenueService [
	| aVenue |
	aVenue := VenuePosting new.
	service := aVenue
]
