# react-native-key-commands

## Getting started

`$ npm install react-native-key-commands --save`

### Mostly automatic installation

`$ react-native link react-native-key-commands`


#### iOS

this project supports `Podfile`s. Add something like this to your `Podfile`:

```
pod 'RCTKeyCommands', :path => '../node_modules/react-native-key-commands'
```

#### Android

Currently no support for Android

## Usage

```javascript
import { KeyCommandsView, Modifiers } from 'react-native-key-commands';


...
  <KeyCommandsView
    input='p'
    modifier={Modifiers.Command}
    command={() => console.log('you just hit <CMD>+p!')}
  />
```

Currently, this package only supports a single command
