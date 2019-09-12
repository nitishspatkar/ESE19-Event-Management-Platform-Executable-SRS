Class {
	#name : #EMPServicePostingExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #'as yet unclassified' }
EMPServicePostingExample >> VenuePosting [
	<gtExample>
	^ VenuePosting with: 'a venue service'
]

{ #category : #'as yet unclassified' }
EMPServicePostingExample >> cateringService [
	<gtExample>
	^ CateringPosting with: 'a caterging service'.
]
