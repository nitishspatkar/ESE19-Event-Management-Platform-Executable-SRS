Class {
	#name : #EMPAdmin,
	#superclass : #EMPUser,
	#instVars : [
		'serviceRequests'
	],
	#category : #EMPlatform
}

{ #category : #'as yet unclassified' }
EMPAdmin >> accept: aService [
	self serviceRequests add: aService
]

{ #category : #accessing }
EMPAdmin >> acceptOrRejectService [
	<gtExample>
	| servicesToPublish |
	servicesToPublish := MyAdmin serviceRequests
		select: [ :each | each description isNotEmpty ].
	servicesToPublish
		do: [ :each | 
			each publishedFlag: true.
			MyAdmin serviceRequests remove: each.
			MyApp services add: each ]
]

{ #category : #accessing }
EMPAdmin >> initialize [
	super initialize.
	isLogged := true.
	serviceRequests := OrderedCollection new
]

{ #category : #accessing }
EMPAdmin >> serviceRequests [
	^ serviceRequests
]
