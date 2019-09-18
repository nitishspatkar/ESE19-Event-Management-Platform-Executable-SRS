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
	"Check if the user is a service provider and logged in - we have only one"
	anApp := EMPAppExample new appWithloggedInServiceProvider.
	aServiceProvider := anApp users anyOne.
	aCateringService := EMPServicePostingExample new cateringService.
	"Add service and send this posting to admin for approval"
	aServiceProvider add: aCateringService forwardTo: anAdmin of: anApp.
	^ anApp 
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
