# Welcome to executable SRS for ESE 2019 project

This project contains executable SRS for 'Event Management Platform' to be developed as a part of ESE 2019 course.

It contains following classes and relationships: 

 - **EMPApp** holds users and services 
 -  **EMPUser** is a superclass which is further specialized into **EMPAdmin**, **EMPServiceProvider** amd **EMPEndUser** 
 - **ServicePosting** is a superclass which is further specialized into **CateringPosting** and **VenuePosting**.

All the application logic is composed as a set of `<gtExample>` further to be composed in an executable document to tell a running story.

## How to load

You can load the whole code in Pharo 8.0 using the following snippet:

```
EpMonitor current disable.
[ 
  Metacello new
    baseline: 'EMPlatform';
    repository: 'github://nitishspatkar/ESE19-Event-Management-Platform-Executable-SRS';
    load
] ensure: [ EpMonitor current enable ].
```

## To get started: 
Make few classes global by running following in the playground-

    Smalltalk at: #MyAdmin put: EMPAdmin new
and 

      Smalltalk at:  #MyApp put: EMPApp new

It will make easy to access their methods from within other examples.

Next, in **EMPUser** class run `registerExample`. This will create four different users and add them to the app. You can now run `loginUser1Example` and `loginUser4Example` which will allow these two users to use the other functionality of the app such as creating a service. You can run `MyAdmin` and `MyApp` in the playground to see the actual state of these two objects. As you can see, `MyApp` will now contain four users.

You can now create a service posting. For that, go in **EMPServiceProvider** class and run `addCateringServiceExample` and `addVenueServiceExample`. They will create two services and send them to **EMPAdmin** for her approval. You can check my running `MyAdmin` again in the playground, you will notice two services added in the *serviceRequests* OrderedCollection.

Next, EMPAdmin can approve or reject received services if they are incomplete i.e. if the *description* is misisng. Go in **EMPAdmin** and run `acceptOrRejectService` example. One service will be accepted and one rejected. The accepted service is added to the *services* collection of **EMPApp**. You can check this by running `MyAdmin` and `MyApp` in the playground. As will see, `MyApp` will now contain four users and one service,  whereas **MyAdmin** contains one service which has no description.



