import * as types from './types'


export function addEl(el,from){
  return (dispatch, getState) => {

      dispatch(Object.assign({ type: types.VMENU_ADD_EL , el:el, from:from } ));
  }
}

export function removeEl(id,from){
  return (dispatch, getState) => {

      dispatch(Object.assign({ type: types.VMENU_REMOVE_EL , id:id ,from:from} ));
  }
}

export function addNameAndIndex(name,index){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.VMENU_ADD_NAME_INDEX ,name:name , index:index} ));
  }
}

export function addMenu(menu){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.VMENU_ADD_MENU, passedMenu:menu } ));
  }
}

export function resetVariableMenu(){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.VMENU_RESET} ));
  }
}
