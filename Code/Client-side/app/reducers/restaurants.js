import * as types from '../actions/types'
import createReducer from '../lib/createReducer'
import Api from '../lib/api'



function getObjectById(id,collections){
  for (var i = 0; i < collections.length; i++) {
    if (collections[i].id == id)
      return  Object.assign(collections[i]);
    }
  }

export const restaurantState = createReducer(  Object.assign( { selectedPiatto: false, selectedRestaurant: null ,restaurants: null ,selectedMenu:null } )  , {
    [types.SELECT_RESTAURANT](state, action) {
            return Object.assign( {selectedPiatto: false,  selectedRestaurant: getObjectById(action.id,state.restaurants) , restaurants: state.restaurants  ,selectedMenu:null }  ) ;
    },
    [types.DESELECT_RESTAURANT](state, action) {
            return Object.assign( {selectedPiatto: false,  selectedRestaurant: null ,restaurants:  state.restaurants,  selectedMenu:null }   ) ;
    },
    [types.SET_FETCHED_RESTAURANT](state, action) {
            var restaurants = orderRestaurantsByKM(action.restaurants.restaurants,action.initialPosition);
          console.log(action.initialPosition);
            return Object.assign( { selectedPiatto: false, selectedRestaurant: null   ,selectedMenu:null , restaurants:restaurants } ) ;
    },
    [types.SELECT_MENU](state, action) {
            if(action.complete==false)
              return Object.assign( {selectedPiatto: false,  selectedMenu: getObjectById(action.id, state.selectedRestaurant.menus) ,restaurants: state.restaurants  , selectedRestaurant: state.selectedRestaurant }  ) ;
            else
              return Object.assign( {selectedPiatto: false,  selectedMenu: state.selectedRestaurant.complete_menu ,restaurants: state.restaurants  , selectedRestaurant: state.selectedRestaurant }  ) ;

    },
    [types.DESELECT_MENU](state, action) {
            return Object.assign( { selectedPiatto: false, selectedMenu: null ,restaurants: state.restaurants  , selectedRestaurant: state.selectedRestaurant }  ) ;
    },
    [types.SELECT_PIATTO](state, action) {

            return Object.assign( { selectedPiatto: getObjectById(action.id, action.piattoList),selectedMenu:state.selectedMenu ,restaurants: state.restaurants  , selectedRestaurant: state.selectedRestaurant }  ) ;
    },
    [types.DESELECT_PIATTO](state, action) {
            return Object.assign( {selectedPiatto: false , selectedMenu: state.selectedMenu ,restaurants: state.restaurants  , selectedRestaurant: state.selectedRestaurant }  ) ;
    },
    [types.SET_FETCHED_BOOKING](state, action) {
            return Object.assign( { selectedPiatto: state.selectedPiatto, selectedRestaurant: state.selectedRestaurant   ,selectedMenu:state.selectedMenu,restaurants: state.restaurants  }) ;
    },
});


function getDistanceFromLatLonInKm(initialPosition,lat2,lon2) {
  if (initialPosition!= null) {


     var lat1 = initialPosition.coords.latitude;
     var lon1 = initialPosition.coords.longitude;


       var R = 6371; // Radius of the earth in km
       var dLat = deg2rad(lat2-lat1);  // deg2rad below
       var dLon = deg2rad(lon2-lon1);
       var a =
         Math.sin(dLat/2) * Math.sin(dLat/2) +
         Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
         Math.sin(dLon/2) * Math.sin(dLon/2)
         ;
       var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
       var d = R * c; // Distance in km
       return d;
     }
     //ToastAndroid.show('geolocation error: check if geolocalization is active!', ToastAndroid.SHORT)
     }

function deg2rad(deg) {
     return deg * (Math.PI/180)
}

 function orderRestaurantsByKM(restaurants,initialPosition){
   if (restaurants!=null) {

     var ordered_restaurants = new Array(restaurants.length);
     console.log();
     for (var i = 0; i < restaurants.length; i++) {

       ordered_restaurants[i] = Object.assign({distance :Math.round( getDistanceFromLatLonInKm(initialPosition,parseFloat( restaurants[i].coordinate.latitude) ,parseFloat( restaurants[i].coordinate.longitude)) * 10 ) / 10 ,
                                               address: restaurants[i].address,
                                               avg_vote: restaurants[i].avg_vote,
                                               complete_menu: restaurants[i].complete_menu,
                                               coordinate: restaurants[i].coordinate,
                                               id:restaurants[i].id,
                                               menus: restaurants[i].menus,
                                               name: restaurants[i].name,
                                               orari: restaurants[i].orari,
                                               thumbnail: restaurants[i].thumbnail
                                              })
     }

     ordered_restaurants.sort(compare);

     return ordered_restaurants
   }

 }

function compare(a,b) {
 if (a.distance < b.distance)
   return -1;
 if (a.distance > b.distance)
   return 1;
 return 0;
}
