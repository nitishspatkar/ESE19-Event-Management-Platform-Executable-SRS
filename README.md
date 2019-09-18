# Welcome to executable SRS for ESE 2019 project

This project contains executable SRS for 'Event Management Platform' to be developed as a part of ESE 2019 course.

It contains following classes and relationships: 

 - **EMPApp** holds users and services 
 -  **EMPUser** is a superclass which is further specialized into **EMPAdmin**, **EMPServiceProvider** amd **EMPEndUser** 
 - **ServicePosting** is a superclass which is further specialized into **CateringPosting** and **VenuePosting**.

All the application logic is composed as a set of `<gtExample>` further composed in an executable document to tell a running story.

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
Open playground and type `EMPApp` and run. You will see the documentation which is interactive.



