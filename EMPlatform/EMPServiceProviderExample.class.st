Class {
	#name : #EMPServiceProviderExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #adding }
EMPServiceProviderExample >> addCateringService [
	<gtExample>
	| aCateringService aServiceProvider |
	aCateringService := EMPServicePostingExample new cateringService.
	"Check if the user is a service provider and logged in - we have only one"
	aServiceProvider := EMPServiceProvider new.
	aServiceProvider add: aCateringService to: EMPAppExample new app.
	"Also send this posting to admin for approval"
	aServiceProvider forward: aCateringService to: EMPUserExample new admin.
]
