Class {
	#name : #EMPAdmin,
	#superclass : #EMPUser,
	#instVars : [
		'serviceRequests'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPAdmin >> acceptOrRejectService [
	<gtExample>
	| servicesToPublish |
	servicesToPublish := MyAdmin serviceRequests
		select: [ :each | each description isNotEmpty ].
	MyApp services addAll: {servicesToPublish}.
	servicesToPublish
		do: [ :each | MyAdmin serviceRequests remove: each ]
]

{ #category : #accessing }
EMPAdmin >> initialize [
	super initialize.
	appAccess := true.
	serviceRequests := OrderedCollection new
]

{ #category : #accessing }
EMPAdmin >> serviceRequests [
	^ serviceRequests
]
