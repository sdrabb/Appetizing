import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import { mapStyle } from '../styles/mapStyle';

import {
    View,
    Button,
    StyleSheet,
} from 'react-native';

import MapView from 'react-native-maps';

import {
  Container,
  Content,

 } from 'native-base';
import HeaderApp from './HeaderApp'


class RestaurantMap extends Component {

    render() {
        return (
          <Container>
          <View>
            <HeaderApp/>
          </View>


          <View style ={mapStyle.container}>
          <MapView
            style={mapStyle.map}
            showsUserLocation= {true}
            initialRegion={{

              latitude: 43.756277,
              longitude:  11.246714,
              latitudeDelta: 1.5,
              longitudeDelta: 1.5,
            }}
          >
          {this.props.restaurantState.restaurants.map(restaurant => (
            <MapView.Marker
            key= {restaurant.id}
            coordinate={{latitude:parseFloat(restaurant.coordinate.latitude) , longitude:parseFloat(restaurant.coordinate.longitude)}}
            title={restaurant.name}
            onCalloutPress={ () => { this.props.selectRestaurant(restaurant.id); this.props.goToPage(2)  }}
            />
          ))}
          </MapView>
          </View>



          </Container>
                    )
    }
}



function mapDispatchToProps(dispatch) {
    return bindActionCreators(ActionCreators, dispatch);
}

//The mapStateToProps function takes a single argument of the entire Redux store’s state and returns an object to be passed as props.
function mapStateToProps(state) {
    return {
      counterState: state.counterState,
      variableMenuState: state.variableMenuState,
        navigationState: state.navigationState,
        restaurantState: state.restaurantState,
        reservationState: state.reservationState,

    };
}

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantMap);
