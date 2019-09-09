Class {
	#name : #EMPServiceProvider,
	#superclass : #EMPUser,
	#instVars : [
		'service'
	],
	#category : #EMPlatform
}

{ #category : #accessing }
EMPServiceProvider >> addCateringServiceExample [
	<gtExample>
	| newService |
	newService := CateringPosting new.
	newService description: 'sample service description'.
	MyAdmin serviceRequests addAll: {newService}.
	MyApp services addAll: {newService}.
	^ newService
]
