# Footprints (an IvyHacks 2020 project)
__Creators:__ Chi-Hong Cheung, Allison Lai, Dharmawan Santosa, Caitlin Stanton

![Short demo of Footprints](notes/Footprints-Demo.gif)

## About the Mobile App
### Inspiration
Recently, a climate clock in New York City has caught everyone's attention as it predicted that we only have approximately 7 years left to act before it's too late. __One of the major contributors to this environmental issue is carbon footprints and every single individual living on earth plays a part.__ Unfortunately, not many are aware of the carbon footprint that they produce through their daily activities. This led to the creation of different carbon footprint calculator apps. However, existing apps only calculate things on an annual basis and are very complicated to fill (imagine that you need to recall how many miles of travel you took in a year). We believe that this kind of app should be easy to use and not such a hassle, while also assist user directly in __reducing their carbon footprint consumption__.

### Introducing Footprints
Footprints helps individuals in __calculating their carbon footprint consumption__ on a daily basis and offers __personalised recommendations__ on the "quick wins" actions that they can do based on their inputs. To incentivize decreasing carbon footprint, the app offers a __donate feature__ for them that will be used to fund environmental and conservation acts. With this, users will be fully aware of their significant involvement in this issue and have the chance to act straight away to offset the negative externalities that they have caused. __So not only is social good being done by decreasing footprint, but the credits earned from decreasing footprint can then be used to do more social good with the donations.__ Other features include a history screen showing the user the history of their carbon footprints consumption and a map screen where users can see how other cities are doing in terms of their carbon footprint consumption.

## Technical Implementation
### Core Capabilities
The core capabilities of this prototype is as follows:
- User authentication and loading of user's saved data based on credentials
- Logging user's carbon footprint consumption
- Screen showing the history of the user's consumption
- Map showing average carbon footprint consumption in various cities
- Screen showing the organizations to which user can donate

### Technologies Used
- Figma for UI design
- Dart language with the Flutter toolkit to develop the mobile app
- Google Firebase's Cloud Firestore database to store user data
- Google Firebase's Authentication to authenticate users
- Google Cloud’s Maps API to show a map with city statistics

### Setup
The setup that has to be done involves connecting app to Google Cloud services:
- Google Firebase: You can follow Steps 1-3 at https://firebase.google.com/docs/flutter/setup?platform=android (step 4 is already done)
- Google Maps: Enable Maps SDK for Android in your Google Cloud console. Then follow the Android app section of https://codelabs.developers.google.com/codelabs/google-maps-in-flutter/#3 to add  the API keys to the app. __CAUTION:__ For security purposes, do not include the API key when you publish the code (e.g. push it to a public repo). There's probably a better way to secure this.