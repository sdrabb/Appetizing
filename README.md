# Appetizing
find your restaurant with this app built with React Native framework.

## Authors
* Riccardo Papucci
* Alberto Merciai

## CONTENTS OF THIS FILE
 * PREREQUISITES
 * NPM-PACKAGES REQUIRED
 * PROJECT-STRUCURE
 * PROGRAM-STRUCURE
 * REACT NATIVE MOTO-G SETUP (IT)

## PROJECT-STRUCURE
 	.
 	├── Code
 	|   ├── Client-side
 	|   └── Server-side
 	├── Mockup
 	├── Database
 	├── Needfinding and contract
 	├── Usability
 	└── flow-chart

 	    * Code: it contains the client side and the server side of the application developed
 	    * Mockup: it contains application mockup
 	    * Database: it contains ER model and the database used
 	    * Needfinding and contract: it contains Needfindinng process and the contract stipulated with the teacher
 	    * Usability: it contains Usability process
 	    * flow-chart: it contains the flow-chart of the application

##  PREREQUISITES

  *  [React Native:](https://facebook.github.io/react-native/)
  *  [Installation:](https://facebook.github.io/react-native/docs/getting-started.html)
  *  [Redux-tutorial:](https://www.youtube.com/watch?v=FIq45_Jveg8)


##  PROGRAM-STRUCURE


  	Client-side
  	├── index.android.js
  	└── app
  	    ├── actions
  	    ├── containers
  	    ├── img
  	    ├── lib
  	    ├── reducers
  	    ├── styles
  	    └── Themes


  	    * index.android.js: The main program that must overwrite the one who inside new  project
  	    * app: folder where all the program reside that must be paste inside new react native project
  	    * actions: folder that contains all the redux actions
  	    * containers: folder that contains all the components of the redux model
  	    * img: it contains images used by the app
  	    * lib: contains the external libraries to manage reducers
  	    * reducers: folder that contains all the reducers of the redux model
  	    * styles: folder that contains all styles used in app
  	    * Themes: contains the themes of native-base components


  	Server-side
   	├── connect.php
          ├── db.sql
  	└── booking.php


  	    * connect.php: it contains the program used to retrieves restaurants information from the database  
  	    * db.sql: it is the exported database
  	    * booking.php: it contains the programs used to store the reservations into the database


## NPM-PACKAGES REQUIRED


   * **Redux:**
  		webpack/webpack ---> https://github.com/webpack/webpack --> npm install --save-dev webpack (dependence of Redux)

  		npm install --save react-redux (reactive redux)

  		package/redux --->    https://www.npmjs.com/package/redux --> npm install --save redux (for the Model)

  		npm install --save redux-thunk (per debugger)

  		npm i --save redux-logger (per debugger è un logger)


   * **assertions:**
  		npm install --save-dev mocha chai enzyme (for the Assertions)


   * **ui:**
  		npm install native-base --save (native-base ui)


   * **icon:**

  		npm install rnpm -g (dependence for icon native-base ui)

  		rnpm link

  		npm install react-native-vector-icons --save (icons)

  		guide ---->  http://nativebase.io/docs/v0.3.1/getting-started


   * **maps:**
  		https://github.com/airbnb/react-native-maps/blob/master/docs/installation.md ----> reference

  		https://developers.google.com/maps/documentation/android-api/signup ---> take the key and activate the js api

  		npm install react-native-maps --save

  		react-native link

  		npm install react-native@0.40 --save


   * **calendar:**
  		npm install react-native-calendar-picker

  		https://github.com/stephy/CalendarPicker----> reference


   * **star-rating:**
  		npm install react-native-star-rating --save

  		https://github.com/djchie/react-native-star-rating  ----> reference

   * **scrollable-bar:**

  		https://github.com/skv-headless/react-native-scrollable-tab-view

  		Run npm install react-native-scrollable-tab-view --save

  		var ScrollableTabView = require('react-native-scrollable-tab-view');
   * **checkbox:**

  		npm i react-native-check-box --save

  		https://www.npmjs.com/package/react-native-check-box ----> reference

   * **radio-button:**

  		https://github.com/ArnaudRinquin/react-native-radio-buttons

  		npm i -S react-native-radio-buttons

   * **geolocalization:**

  		https://facebook.github.io/react-native/docs/geolocation.html


##  GUIDA INSTALLAZIONE REACT-NATIVE CON USB MOTO-G (ITA)

      NOTA: prima di eseguire i seguenti passaggi ricorda di abilitare debug usb dal cellulare di modo che quando utilizzi il comando -adb devices il tuo 	 dispositivo venga rilevato e impostare trasferisci file MTP swippando verso il basso la sbarra dove c'è l'ora in alto  di android


      	0) adb reverse tcp:8081 tcp:8081


      	1) avviare server node con react-native start dal pc


      	2) settare server una volta installata l'app
      	I got this also when I started for the first time with React Native, using a physical device. If that's the case, you need to do some extra things before you can get started. You have to enter some information about your development machine in the 'Dev Settings' of React Native.

      When you see the error, shake your device. A dialog will popup, the last option will be 'Dev Settings'. Select 'Debug server hot & port for device' and enter your local IP and the used port (usually 8081).

      es. 192.168.1.89:8081
