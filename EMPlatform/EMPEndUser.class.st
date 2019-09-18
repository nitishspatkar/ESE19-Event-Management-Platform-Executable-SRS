"
! I am an end user

I am willing to explore ${class:name=ServicePosting}$ for my event:

${example:name=EMPUserExample>>#allServices}$


"
Class {
	#name : #EMPEndUser,
	#superclass : #EMPUser,
	#category : #'EMPlatform-Model'
}

{ #category : #accessing }
EMPEndUser >> allServicesIn: anApp [
	<gtExample>
	^ anApp services
]
