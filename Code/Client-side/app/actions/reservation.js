import * as types from './types'
import ReactNative from 'react-native'

export function setFixedReservationInfo(date,name,numberOfPeople,hour){
  return (dispatch, getState) => {

      dispatch(Object.assign({restaurantId:getState().restaurantState.selectedRestaurant.id, hour:hour , type: types.RESERVATION_SET_FIXED_INFO , date:date, name:name, numberOfPeople:numberOfPeople , orderedMenus:createMenusOfReservation(getState().restaurantState.selectedMenu,numberOfPeople) } ));
  }
}

function createMenusOfReservation(menu,n){
  menuList = [];
  for (var i = 0; i < n ; i++) {
    menuList[i] = Object.assign(menu);
  }
  return menuList;
}

function createNullVector(n){
  menuList = [];
  for (var i = 0; i < n ; i++) {
    menuList[i] = null;
  }
  return menuList;
}

export function setVariableReservationInfo(date,name,numberOfPeople,hour){
  return (dispatch, getState) => {
      dispatch(Object.assign({restaurantId:getState().restaurantState.selectedRestaurant.id, hour:hour , type: types.RESERVATION_SET_VARIABLE_INFO , date:date, name:name, numberOfPeople:numberOfPeople , orderedMenus:[] } ));
  }
}

export function setVariableSingleMenu(){
  return (dispatch, getState) => {
      var variableMenu = getState().variableMenuState;
      dispatch(Object.assign({restaurantId:getState().restaurantState.selectedRestaurant.id,type: types.RESERVATION_SET_SINGLE_VMENU, name:variableMenu.name,index:variableMenu.index,menu:variableMenu.selectedMenu  } ));
  }
}


export function resetReservation(){
  return (dispatch, getState) => {
      var variableMenu = getState().variableMenuState;
      dispatch(Object.assign({type: types.RESERVATION_RESET } ));
  }
}
