Class {
	#name : #EMPServicePostingExample,
	#superclass : #Object,
	#category : #'EMPlatform-Examples'
}

{ #category : #'as yet unclassified' }
EMPServicePostingExample >> cateringService [
	<gtExample>
	^ CateringPosting with: 'a caterging service'.
]

{ #category : #'as yet unclassified' }
EMPServicePostingExample >> venueService [
	<gtExample>
	^ VenuePosting with: 'a venue service'
]

{ #category : #'as yet unclassified' }
EMPServicePostingExample >> venueServiceWithoutDescription [
	<gtExample>
	^ VenuePosting new
]
