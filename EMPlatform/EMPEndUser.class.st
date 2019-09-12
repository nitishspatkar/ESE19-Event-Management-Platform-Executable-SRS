Class {
	#name : #EMPEndUser,
	#superclass : #EMPUser,
	#category : #EMPlatform
}

{ #category : #accessing }
EMPEndUser >> allServices [
	<gtExample>
	^ MyApp services
]
