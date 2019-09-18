Class {
	#name : #EMPAdminExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #'as yet unclassified' }
EMPAdminExample >> acceptedServiceByAdmin [
	<gtExample>
	| anApp anAdmin aServiceProvider aCateringService aVenueService |
	anAdmin := EMPUserExample new admin.
	"Check if the user is a service provider and logged in - we have only one"
	anApp := EMPAppExample new appWithloggedInServiceProvider.
	aServiceProvider := anApp users anyOne.
	aCateringService := EMPServicePostingExample new cateringService.
	aVenueService := EMPServicePostingExample new
		venueServiceWithoutDescription.
	"Add service and send this posting to admin for approval"
	aServiceProvider add: aCateringService forwardTo: anAdmin of: anApp.
	aServiceProvider add: aVenueService forwardTo: anAdmin of: anApp.
	^ anApp
]
