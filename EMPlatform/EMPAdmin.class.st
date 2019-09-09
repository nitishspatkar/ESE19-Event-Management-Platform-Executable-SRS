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
	servicesToPublish
		do: [ :each | 
			each publishedFlag: true.
			MyAdmin serviceRequests remove: each.
			MyApp services add: each ]
	"MyApp services
		addAll: {servicesToPublish}"
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
