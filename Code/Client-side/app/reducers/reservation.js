import * as types from '../actions/types'
import createReducer from '../lib/createReducer'

export const reservationState = createReducer(  Object.assign( {reservation:null }   )  , {
    [types.RESERVATION_SET_FIXED_INFO](state, action) {
            var reservation_info = Object.assign({restaurantId:action.restaurantId, hour:action.hour,date: action.date, name:action.name, numberOfPeople:action.numberOfPeople , orderedMenus:action.orderedMenus}  )
            return Object.assign( {reservation: reservation_info }  ) ;
    },
    [types.RESERVATION_SET_VARIABLE_INFO](state, action) {
            var reservation_info = Object.assign({restaurantId:action.restaurantId,hour:action.hour,date: action.date, name:action.name, numberOfPeople:action.numberOfPeople , orderedMenus:action.orderedMenus}  )
            return Object.assign( {reservation: reservation_info }  ) ;
    },
    [types.RESERVATION_SET_SINGLE_VMENU](state, action) {
      var newOrderedMenus = Object.assign(state.reservation.orderedMenus);
      var foundIndex =checkIfPresent(newOrderedMenus, action.index);

      if (foundIndex == -1) {
        newOrderedMenus.push( Object.assign({index:action.index,menu: action.menu, customerName:action.name}));
        var reservation_info = Object.assign({restaurantId:action.restaurantId,hour:state.reservation.hour,date: state.reservation.date, name:state.reservation.name, numberOfPeople:state.reservation.numberOfPeople , orderedMenus:newOrderedMenus}  )
        return Object.assign( {reservation: reservation_info }  ) ;
      }

      newOrderedMenus[foundIndex] = Object.assign({index:action.index,menu: action.menu, customerName:action.name});


      var reservation_info = Object.assign({restaurantId:state.reservation.restaurantId,hour:state.reservation.hour,date: state.reservation.date, name:state.reservation.name, numberOfPeople:state.reservation.numberOfPeople , orderedMenus:newOrderedMenus}  )
      return Object.assign( {reservation: reservation_info }  ) ;
    },
    [types.RESERVATION_RESET](state, action) {
            return Object.assign( {reservation: null }  ) ;
    }

});


function checkIfPresent(arrayList,index){
  var isFound = -1;
  for (var i = 0; i < arrayList.length; i++) {
    if (arrayList[i].index==index) {
      isFound = i;
    }
  }
  return isFound;
}
