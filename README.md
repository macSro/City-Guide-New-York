<a name="top"></a>

# New York City Guide

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#run">Run</a></li>
      </ul>
    </li>
    <li><a href="#features">Features</a></li>
    <li><a href="#disclaimer">Disclaimer</a></li>
    <li><a href="#demo">Demo</a></li>
  </ol>
</details>

## About The Project

This project is a city guide app for New York implemented in compliance with <a href="https://m2.material.io/">Material Design</a>. It should be viewed as a _demo_ because sample data is hard-coded rather than fetched from an API. It was originally created for a laboratory class as part of _Mobile and Multimedia Systems_ course at _Wrocław University of Science and Technology_.

_For examples of use, please refer to the <a href="#demo">Demo</a> section._

### Built With

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Google Cloud](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

State management: <a href="https://pub.dev/packages/flutter_mobx/install">MobX</a>

<p align="right">(<a href="#top">back to top</a>)</p>



## Getting Started

To get a copy of this project running on your machine follow these steps.

### Prerequisites

* Flutter SDK installed

* Dart SDK installed

* IDE configured for development of Flutter applications _(e.g., VS Code)_

### Installation

1. Clone this repository:

   ```
   git clone https://github.com/macSro/City-Guide-New-York.git
   ```

2. Navigate to the cloned directory:

   ```
   cd City-Guide-New-York
   ```

3. Install the dependencies:

   ```
   flutter pub get
   ```

4. Setup integration with <a href="https://mapsplatform.google.com/">Google Maps Platform</a>

    1. Register and Sign in to <a href="https://cloud.google.com/">Google Cloud</a>

    2. <a href="https://cloud.google.com/resource-manager/docs/creating-managing-projects">Create a new project</a>
  
    3. <a href="https://support.google.com/googleapi/answer/6158867?hl=en&ref_topic=7013279">Enable billing</a>

    4. <a href="https://support.google.com/googleapi/answer/6158841?hl=en&ref_topic=7013279">Enable Maps SDK for Android and Directions API</a>

    5. <a href="https://support.google.com/googleapi/answer/6158862?hl=en&ref_topic=7013279">Create an API key</a>

    6. Replace the placeholders inside ```api_key.dart``` and ```AndroidManifest.xml``` with your API key

### Run

1. Inside your IDE select the target device

2. Run the app with IDE "Run" button _(VS Code: F5)_ or by executing:

```
flutter run
```

<p align="right">(<a href="#top">back to top</a>)</p>



## Features 

* Events
  * browsing
  * locating on a map
* Places
  * browsing
  * locating on a map
  * review browsing and writing
  * Text-To-Speech support
  * promotional video playback
* Accomodations
  * browsing
  * locating on a map
  * review browsing and writing
* Guided tours
  * browsing
  * locating on a map (with a calculated route)



## Disclaimer

Enabling Google APIs tends to suffer from delays (in my experience up to 10mins). If a map isn't loading or a route of a guided tour isn't drawn, please wait and restart the app until it runs successfully :)



## Demo

[guided_tours.webm](https://github.com/macSro/City-Guide-New-York/assets/56345054/334735bb-1517-416b-931a-23355e11cdcc)

[places.webm](https://github.com/macSro/City-Guide-New-York/assets/56345054/e99d3a57-d366-46b1-83d0-d9d2f10cadab)

<p align="right">(<a href="#top">back to top</a>)</p>
