"
You can explore more examples I have to experiment with the domain logic! Just click on the 'Examples' tab to see more examples.
"
Class {
	#name : #EMPAppExample,
	#superclass : #Object,
	#instVars : [
		'app'
	],
	#category : #'EMPlatform-Examples'
}

{ #category : #'examples - app' }
EMPAppExample >> app [
	<gtExample>

	^ EMPApp new
]

{ #category : #'examples - app' }
EMPAppExample >> appWithServiceProvider [
	<gtExample>

	^ self app register: self serviceProviderUser
]

{ #category : #'examples - app' }
EMPAppExample >> appWithServiceProviderAndEndUser [
	<gtExample>

	^ self appWithServiceProvider register: self endUser
]

{ #category : #'instance creation' }
EMPAppExample >> endUser [
	<gtExample>
	^ EMPUserExample new endUser
]

{ #category : #'examples - login' }
EMPAppExample >> loggedInEndUser [
	<gtExample>
	| anApp aUser |

	anApp := self appWithServiceProviderAndEndUser.
	aUser := anApp users at: self endUser username.
	
	anApp login: aUser username with: aUser password.
	
	^ aUser
]

{ #category : #'examples - login' }
EMPAppExample >> loggedInServiceProvider [
	<gtExample>
	| anApp aUser |
	anApp := self appWithServiceProviderAndEndUser.
	aUser := anApp users anyOne.
	anApp login: aUser username with: aUser password.
	^ {anApp.
	aUser}
]

{ #category : #'examples - login' }
EMPAppExample >> notLoggedInServiceProvider [
	<gtExample>
	| anApp aUser |

	anApp := self appWithServiceProvider.
	aUser := anApp users anyOne.
	
	^ aUser
]

{ #category : #'instance creation' }
EMPAppExample >> serviceProviderUser [
	<gtExample>
	
	^ EMPUserExample new serviceProvider
]

{ #category : #'examples - app' }
EMPAppExample >> users [
	<gtExample>

	^ self appWithServiceProviderAndEndUser users
]
