"
! I am a service posting

I am essentially any type of service required for an event.
For example, I can be a ${class:name=VenuePosting}$ or a ${class:name=CateringPosting}$.

Only a logged in ${class:name=EMPServiceProvider}$can create a service:
${example:name=EMPServiceProviderExample>>#addAndPublishCateringService}$
As you can see, now the app contains a published service ready to be seen by ${class:name=EMPEndUser}$

"
Class {
	#name : #ServicePosting,
	#superclass : #Object,
	#instVars : [
		'description',
		'publishedFlag'
	],
	#category : #'EMPlatform-Model'
}

{ #category : #'instance creation' }
ServicePosting class >> with: aDescription [
	^ self new description: aDescription.
]

{ #category : #accessing }
ServicePosting >> description [
	^ description
]

{ #category : #accessing }
ServicePosting >> description: someText [
	description := someText
]

{ #category : #'as yet unclassified' }
ServicePosting >> gtServicePostingFor: aView [
	<gtView>
	^ (self publishedFlag  gtLiveFor: aView)
		title: 'Service';
		priority: 1
]

{ #category : #testing }
ServicePosting >> hasDescription [
	^ self description isNotNil
]

{ #category : #accessing }
ServicePosting >> initialize [
	publishedFlag := false
]

{ #category : #accessing }
ServicePosting >> publishedFlag [
	^ publishedFlag
]

{ #category : #accessing }
ServicePosting >> publishedFlag: aBoolean [
	publishedFlag := aBoolean
]
