import { combineReducers } from 'redux';
import * as navigationReducer from './navigation'
import * as restaurantReducer from './restaurants'
import * as counterReducer from './counter'
import * as variableMenuReducer from './variableMenu'
import * as reservationReducer from './reservation'

export default combineReducers(Object.assign(
    navigationReducer,
    restaurantReducer,
     counterReducer,
     variableMenuReducer,
     reservationReducer

));
