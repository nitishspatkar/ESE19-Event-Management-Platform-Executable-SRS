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
	MyAdmin serviceRequests
		do: [ :each | 
			each description isNotNil
				ifTrue: [ MyApp services addAll: {each}.
					MyAdmin serviceRequests remove: each ] ]
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
