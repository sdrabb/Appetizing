import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'

import RestaurantList from './RestaurantList';
import RestaurantMap from './RestaurantMap';
import RestaurantView from './RestaurantView';
import FixedMenuView from './FixedMenuView';
import BookingChoice from './BookingChoice';
import CustomersList from './CustomersList';
import BookingFixed from './BookingFixed';
import SuccessfulBooking from './SuccessfulBooking'
import RestaurantPosition from './RestaurantPosition'
import VariableMenuView from './VariableMenuView';

import {
    StatusBar,
    Navigator,
    BackAndroid,
    ToastAndroid,
} from 'react-native';

class AppContainer extends Component {

  constructor(props){
    super(props);

    this.state = {
      initialPosition:null,
    };
  }


    componentDidMount(){
      this.props.fetchRestaurant();
    }


    resetSelectedRestaurant(){
      if ((this.props.navigationState.index == 0 || this.props.navigationState.index == 1) && this.props.restaurantState.selectedRestaurant != null )
          this.props.deselectRestaurant();
    }

    resetSelectedMenu(){
      if ((this.props.navigationState.index == 0 || this.props.navigationState.index == 1 || this.props.navigationState.index == 2) && this.props.restaurantState.selectedMenu != null )
        this.props.deselectMenu();
    }

    resetVariableMenu(){
      if ((this.props.navigationState.index <= 5 ) && this.props.variableMenuState.selectedMenu != null )
        this.props.resetVariableMenu();
    }

    resetReservation(){
      if ((this.props.navigationState.index <= 4 ) && this.props.reservationState.reservation != null )
        this.props.resetReservation();
    }

    resetNCustomers(){
      if ((this.props.navigationState.index <=3  ) && this.props.counterState.Ncustomers != 1 )
          this.props.resetCounter();
    }


    componentDidUpdate(){
      this.resetSelectedRestaurant();
      this.resetSelectedMenu();
      this.resetVariableMenu();
      this.resetReservation();
      this.resetNCustomers();
    }

    render() {

        BackAndroid.addEventListener('hardwareBackPress', () => {

          if (!this.props.navigationState.index == 0) {
          this.props.navigationBackward()
          return true;
          }
          return false;
        });

        return (

            <Navigator

                initialRoute={{ title: this.props.navigationState.key, index: this.props.navigationState.index }}
                renderScene={(route,navigator) =>{

                     if (this.props.navigationState.index == 0)
                         return <RestaurantList />
                     if (this.props.navigationState.index == 1)
                        return <RestaurantMap/>
                     if (this.props.navigationState.index == 2)
                         return <RestaurantView/>
                     if (this.props.navigationState.index == 3)
                         return <FixedMenuView/>
                     if (this.props.navigationState.index == 4)
                        return <BookingChoice/>
                     if (this.props.navigationState.index == 5)
                        return <CustomersList/>
                     if(this.props.navigationState.index == 6)
                      return <BookingFixed/>
                     if(this.props.navigationState.index == 7)
                       return <SuccessfulBooking/>
                     if(this.props.navigationState.index == 8)
                        return <RestaurantPosition/>
                     if (this.props.navigationState.index == 9)
                           return <VariableMenuView/>
                      }

                }


            />
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

export default connect(mapStateToProps, mapDispatchToProps)(AppContainer);
