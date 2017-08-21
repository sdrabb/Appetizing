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


class RestaurantPosition extends Component {

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

              latitude: parseFloat(this.props.restaurantState.selectedRestaurant.coordinate.latitude),
              longitude:  parseFloat(this.props.restaurantState.selectedRestaurant.coordinate.longitude),
              latitudeDelta: 1.5,
              longitudeDelta: 1.5,
            }}
          >
            <MapView.Marker
            key= {this.props.restaurantState.selectedRestaurant.id}
            coordinate={{latitude:parseFloat(this.props.restaurantState.selectedRestaurant.coordinate.latitude) , longitude:parseFloat(this.props.restaurantState.selectedRestaurant.coordinate.longitude)}}
            title={this.props.restaurantState.selectedRestaurant.name}
            onCalloutPress={ () => { this.props.selectRestaurant(this.props.restaurantState.selectedRestaurant.id); this.props.goToPage(2)  }}
            />
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

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantPosition);
