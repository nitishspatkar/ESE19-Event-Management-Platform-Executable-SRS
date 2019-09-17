Class {
	#name : #EMPServiceProviderExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #adding }
EMPServiceProviderExample >> aLoggedInServiceProvider [
	<gtExample>
	^ EMPAppExample new loggedInServiceProvider
]

{ #category : #adding }
EMPServiceProviderExample >> aServiceProvider [
	<gtExample>
	^ EMPUserExample new serviceProvider 
]

{ #category : #adding }
EMPServiceProviderExample >> addAndPublishCateringService [
	<gtExample>
	| anApp aCateringService aServiceProvider anAdmin |
	anAdmin := EMPUserExample new admin.
	anApp := EMPAppExample new.
	aCateringService := EMPServicePostingExample new cateringService.
	"Check if the user is a service provider and logged in - we have only one"
	aServiceProvider := anApp loggedInServiceProvider at: 2.
	"Add service and send this posting to admin for approval"
	aServiceProvider add: aCateringService forwardTo: anAdmin.
	^ {anApp.
	anAdmin}
]

{ #category : #adding }
EMPServiceProviderExample >> addAndPublishVenueService [
	<gtExample>
	| aVenueService aServiceProvider |
	aVenueService := EMPServicePostingExample new venueService.
	"Check if the user is a service provider and logged in - we have only one"
	aServiceProvider := EMPAppExample new loggedInServiceProvider.
		"Add service and send this posting to admin for approval"
	
	^ aServiceProvider add: aVenueService forwardTo: EMPUserExample new admin.
]

{ #category : #adding }
EMPServiceProviderExample >> addMultipleServices [
	<gtExample>
|cateringService venueService|
	cateringService :=  EMPServicePostingExample new cateringService.
	venueService := EMPServicePostingExample new venueService.
	^ EMPServiceProviderExample new aLoggedServiceProvider add: cateringService; add: venueService.
]
