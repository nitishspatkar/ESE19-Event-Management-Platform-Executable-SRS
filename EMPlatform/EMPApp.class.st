"
! I am an event management platform

I am responsible for managing users and services.

An app can have multiple ${class:EMPUser}$ and I contain  variours ${class:ServicePosting}$.

!! Setting up

To initialize an app and register user we should first create an instance of an App:
${example:EMPAppExample>>#app|noCode}$ 
By default an app has no registered users nor any services.

To make an app useful we should create our first user as explained in ${class:EMPUserExample}$. Once a user is created we can add it to the app:
${example:EMPAppExample>>#appWithServiceProvider|previewShow=#gtUsersFor:|previewHeight=50|previewExpanded}$
Let's also create another ${class:name=EMPEndUser}$ and add it to the app:
${example:name=EMPAppExample>>#appWithServiceProviderAndEndUser}$
!! Logging in

To start using an app a user must log-in:
${example:EMPAppExample>>#loggedInServiceProvider}$
As you can see one of the users is now logged in, just double click on the user to see its logged in status.

For more examples see ${class:EMPAppExample}$



"
Class {
	#name : #EMPApp,
	#superclass : #Object,
	#instVars : [
		'users',
		'services'
	],
	#category : #'EMPlatform-Model'
}

{ #category : #adding }
EMPApp >> addUser: aUser [
	self users at: aUser username put: aUser.
]

{ #category : #'as yet unclassified' }
EMPApp >> gtServicesFor: aView [
	<gtView>

	^ aView list
		title: 'Services';
		priority: 2;
		items: [ self services ]
]

{ #category : #'as yet unclassified' }
EMPApp >> gtUsersFor: aView [
	<gtView>
	
	^ aView list
		title: 'Users';
		priority: 1;
		items: [ self users values ]
]

{ #category : #accessing }
EMPApp >> initialize [
	super initialize.
	users := OrderedDictionary  new.
	services := OrderedCollection new
]

{ #category : #'private - process' }
EMPApp >> login: username with: password [
	self users at: username
		ifPresent: [ :user | 
			user password = password
				ifTrue: [ user isLogged: true ]
				ifFalse: [ self inform: 'Incorrect password' ] ]
		ifAbsent: [ self inform: 'user is not registered' ].
]

{ #category : #registry }
EMPApp >> register: user [
	self addUser: user.
]

{ #category : #accessing }
EMPApp >> services [
	^ services
]

{ #category : #accessing }
EMPApp >> users [
	^ users
]
