import * as types from './types'
import ReactNative from 'react-native'


export function selectRestaurant(index){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.SELECT_RESTAURANT, id:index } ));
  }
}

export function deselectRestaurant(){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.DESELECT_RESTAURANT } ));
  }
}

export function selectMenu(index,complete){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.SELECT_MENU, id:index, complete:complete } ));
  }
}

export function deselectMenu(){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.DESELECT_MENU } ));
  }
}

export function selectPiatto(index,piattoList){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.SELECT_PIATTO, id:index, piattoList:piattoList } ));
  }
}

export function deselectPiatto(){
  return (dispatch, getState) => {
      dispatch(Object.assign({ type: types.DESELECT_PIATTO } ));
  }
}



export function setFetchedRestaurant(restaurants,initialPosition){
  return   Object.assign({ type: types.SET_FETCHED_RESTAURANT, restaurants:restaurants ,initialPosition:initialPosition } );
}

export function fetchRestaurant() {
    return (dispatch) => {
        var restaurants
        fetch('https://appetizing.000webhostapp.com/connect.php')
          .then((response) => response.text())
            .then((responseText) => {
              navigator.geolocation.getCurrentPosition(
                (position) => {
                  dispatch(setFetchedRestaurant(JSON.parse(responseText),position));
                },
                (error) => {
                  dispatch(setFetchedRestaurant(JSON.parse(responseText),null));
                            } );


            })
            .catch((error) => {
              console.warn(error);
            });

    }
}
export function setFetchedBooking(){
  return   Object.assign({ type: types.SET_FETCHED_BOOKING } );
}

// export function fetchBooking(name,date,time,n) {
//     return (dispatch) => {
//         fetch('https://appetizing.000webhostapp.com/booking.php?name='+name+'&date='+date+'&time='+time+'&n='+n+'')
//           .then((response) => response.text())
//             .then((responseText) => {
//               dispatch(setFetchedRestaurant());
//             })
//             .catch((error) => {
//               console.warn(error);
//             });
//
//     }
// }

export function fetchBooking(name,date,time,n) {
    return (dispatch) => {
        fetch('https://appetizing.000webhostapp.com/booking.php?name='+name+'&date='+date+'&time='+time+'&n='+n+'')
          .then((response) => response.text())
            .then((responseText) => {
              dispatch(setFetchedBooking());
            })
            .catch((error) => {
              console.warn(error);
            });

    }
}
