import * as types from './types';

export function increment() {
  return {
    type: types.COUNTER_INCREMENT
  };
}

export function decrement() {
  return {
    type: types.COUNTER_DECREMENT
  };
}

export function resetCounter() {
  return {
    type: types.COUNTER_RESET
  };
}
