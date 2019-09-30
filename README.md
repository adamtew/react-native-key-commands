# react-native-ui-commands

## Getting started

`$ npm install react-native-ui-commands --save`

### Mostly automatic installation

`$ react-native link react-native-ui-commands`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ui-commands` and add `UiCommands.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libUiCommands.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.UiCommandsPackage;` to the imports at the top of the file
  - Add `new UiCommandsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-ui-commands'
  	project(':react-native-ui-commands').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-ui-commands/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-ui-commands')
  	```


## Usage
```javascript
import UiCommands from 'react-native-ui-commands';

// TODO: What to do with the module?
UiCommands;
```
