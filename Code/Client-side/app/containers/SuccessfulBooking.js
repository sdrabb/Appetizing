import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import { View,
        Text,
        } from 'react-native';
import { styles } from '../styles/styles';
import HeaderApp from './HeaderApp'
import appetizingTheme from '../Themes/appetizingTheme';

import {
  Container,
  Content,
 } from 'native-base';

class SuccessfulBooking extends Component {


    render() {

        return (
          <Container>
            <View>
              <HeaderApp/>
            </View>
            <Content theme={appetizingTheme}>
              <View>
                <Text>
                  Prenotazione avvenuta con successo
                </Text>
              </View>
            </Content>

          </Container>
        );
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

export default connect(mapStateToProps, mapDispatchToProps)(SuccessfulBooking);
