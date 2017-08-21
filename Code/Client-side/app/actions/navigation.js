import * as types from './types'
import ReactNative from 'react-native'

export function goToPage(index){
  return (dispatch, getState) => {

      dispatch(Object.assign({ type: types.NAVIGATION_GO_TO_PAGE, index:index ,previousIndex: getState().navigationState.index } ));
  }
}

export function navigationBackward(){
  return (dispatch, getState) => {

      dispatch(Object.assign({ type: types.NAVIGATION_BACKWARD, previousIndex: getState().navigationState.index } ));
  }
}
