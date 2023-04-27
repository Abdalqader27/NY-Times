
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)


# Flutter News App

News App developed with Flutter and API from [NY Times API](https://developer.nytimes.com)

## Usage

1. Please visit this webiste **https://developer.nytimes.com/** and add new app then you will get `YOUR API KEY`
2. write this command in your termanial to lunch the app


```  
flutter run --dart-define=API_KEY=YOUR_API_KEY  
```  

For iOS, to build and release there is no configuration. Just follow the instructions from  
the [documentation](https://flutter.dev/docs/deployment/ios).
## Test
to run the test write this command in your termanial to lunch your app mock test

 ```  
 flutter test test/unit_test.dart  --dart-define=API_KEY=YOUR_API_KEY
``` 


## Feature
- [X] List daily news.
- [X] Refresh list daily news with pull to refresh style.
- [X] Go to detail news website.
- [X] Dark mode support.
- [X] Unit Testing.
- [X] Flutter Animation.

## Pages
<br/>Error Page:<br/>  
<img width="402" alt="Screenshot 2023-04-26 at 8 29 39 PM" src="https://user-images.githubusercontent.com/46373332/234641728-6fb4ec9d-41f8-4596-8bae-580852e67bde.png">
<img width="401" alt="Screenshot 2023-04-26 at 8 24 27 PM" src="https://user-images.githubusercontent.com/46373332/234641736-4aef5970-1ce2-4bb9-b76c-2762b62ab675.png">
<br/> Home Page:<br/>  
<img width="405" alt="Screenshot 2023-04-26 at 8 24 07 PM" src="https://user-images.githubusercontent.com/46373332/234642735-b669a689-c3f4-4fd0-8eb4-6242109deddd.png">
<img width="399" alt="Screenshot 2023-04-26 at 8 33 27 PM" src="https://user-images.githubusercontent.com/46373332/234642713-3dff80e2-db6a-4d76-b30f-94d6bdb54f16.png">
<br/> Details Page:<br/>  
<img width="404" alt="Screenshot 2023-04-26 at 8 35 35 PM" src="https://user-images.githubusercontent.com/46373332/234643350-59337954-ad14-49a4-9b99-c703cf7c2a8a.png">
<img width="402" alt="Screenshot 2023-04-26 at 8 35 22 PM" src="https://user-images.githubusercontent.com/46373332/234643357-daf74015-835c-4c32-bfaa-b56a3a2763eb.png">


## Technology

1. Dio: A powerful Http client for Dart, which supports interceptors, FormData, Request Cancellation,  
   File Downloading, Timeout, etc.
2. Flutter BLoC: Flutter widgets that make it easy to implement the BLoC design pattern.
3. Intl: Package providers internationalization and localization facilities, including message  
   translation, plurals and genders, date/number formatting and parsing, and bidirectional text.
4. Cached Network Image: Flutter library to load and cache network images. Can also be used with placeholder and error  
   widgets.
5. Get It: Simple direct Service Locator that allows to decouple the interface from a concrete  
   implementation and to access the concrete implementation from everywhere in your App.
6. Equatable: An abstract class that helps to implement equality without needing to explicitly override == and  
   hashCode.
7. Flutter Responsive framework: A Flutter plugin for adapting screen and font size.
8. Flutter SVG: An SVG rendering and widget library for Flutter, which allows painting and displaying Scalable  
   Vector Graphics 1.1 files.
9. Build Runner: Tools to write binaries that run builders.
10. Bloc Test: A testing library which makes it easy to test blocs.
11. JSON Serializable:  Automatically generate code for converting to and from JSON by annotating Dart classes.

https://www.buymeacoffee.com/abdalqader27
