import React from 'react';

const noop = () => {};

export const Modifiers = {
  Shift: noop,
  Control: noop,
  Alternate: noop,
  Command: noop,
  NumericPad: noop,
};

export const Inputs = {
  InputUpArrow: noop,
  InputDownArrow: noop,
  InputLeftArrow: noop,
  InputRightArrow: noop,
  InputEscape: noop,
};

export const KeyCommandsView = () => <></>;
