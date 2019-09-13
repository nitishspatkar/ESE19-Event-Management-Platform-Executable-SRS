Class {
	#name : #EMPEndUser,
	#superclass : #EMPUser,
	#category : #'EMPlatform-Model'
}

{ #category : #accessing }
EMPEndUser >> allServices [
	<gtExample>
	^ MyApp services
]
