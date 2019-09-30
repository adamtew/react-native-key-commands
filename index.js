import {
  NativeModules,
  NativeSyntheticEvent,
  StyleSheet,
  ViewStyle,
  requireNativeComponent,
  NativeEventEmitter
} from 'react-native'

import React from 'react'
const { KeyCommandModifiers } = NativeModules;

export const Modifiers = Platform.OS === "ios" ? {
  Shift: KeyCommandModifiers.ModifierShift,
  Control: KeyCommandModifiers.ModifierControl,
  Alternate: KeyCommandModifiers.ModifierAlternate,
  Command: KeyCommandModifiers.ModifierCommand,
  NumericPad: KeyCommandModifiers.ModifierNumericPad,
} : {}

export const Inputs = Platform.OS === "ios" ? {
  InputUpArrow: KeyCommandModifiers.InputUpArrow,
  InputDownArrow: KeyCommandModifiers.InputDownArrow,
  InputLeftArrow: KeyCommandModifiers.InputLeftArrow,
  InputRightArrow: KeyCommandModifiers.InputRightArrow,
  InputEscape: KeyCommandModifiers.InputEscape,
} : {}

const View = Platform.OS === "ios" ? requireNativeComponent('KeyCommand') : {}

export class KeyCommandsView extends React.Component {
  componentDidMount() {
    const { KeyCommandEvent } = NativeModules;
    const eventEmitter = new NativeEventEmitter(KeyCommandEvent);

    this.subscription = eventEmitter.addListener('KeyCommandEvent', this.props.command);
    NativeModules.KeyCommandsView.registerKeyCommand('KeyCommandEvent', this.props.input, this.props.modifier)
  }

  componentWillUnmount() {
    this.subscription.remove()
  }

  render () {
    return Platform.OS === "ios" ? <View {...this.props} /> : <></>
  }
}
