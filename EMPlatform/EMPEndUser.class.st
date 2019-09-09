Class {
	#name : #EMPEndUser,
	#superclass : #EMPUser,
	#category : #EMPlatform
}

{ #category : #accessing }
EMPEndUser >> seeAllServices [
	<gtExample>
	^ MyApp services
]
