import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import { View,
        StyleSheet,
        Text,
          ToastAndroid,
        Image
        } from 'react-native';
import { styles } from '../styles/styles';
import HeaderApp from './HeaderApp'
import appetizingTheme from '../Themes/appetizingTheme';

import {
  Container,
  Content,
  Footer,
  Icon,
  List,
  ListItem,
  InputGroup,
  Input,
  Button
 } from 'native-base';



class CustomersList extends Component {

  constructor(props) {
      super(props);

      this.state = {
        nameVector:[]
      };


  }

    isIndexFound(index){
      var isFound = false;
      if(this.props.reservationState!=null){
        var orderedMenus = Object.assign(this.props.reservationState.reservation.orderedMenus);
        for (var i = 0; i < orderedMenus.length; i++) {
          if(orderedMenus[i].index == index){
            isFound = orderedMenus[i];
          }
        }
      }
      return isFound;
    }

    modifyMenu(menuFound){
      this.props.goToPage(9);
      this.props.addMenu(menuFound);
    }

    renderButton(index){
      var button ;
      var menuFound = this.isIndexFound(index);
      if(menuFound==false)
        button = <Button rounded block
                onPress={ () => {this.chooseMenu(this.state.nameVector[index],index) }}>
                Menù
                </Button>;
      else {
        button = <Button rounded block
                warning
                onPress={ () => {this.modifyMenu(menuFound)}}>
                Modify Menù
                </Button>;
      }
      return button;
    }

    setCustomerName(text,i){
      var newNameVector = Object.assign(this.state.nameVector);
      newNameVector[i] = text;
      this.setState({nameVector: newNameVector});

    }

    componentWillMount(){
      for (var i = 0; i < this.props.counterState.Ncustomers; i++) {
        this.setCustomerName('user'+i,i);
      }
    }
    chooseMenu(customer,index){
        this.props.addNameAndIndex(customer,index);
        this.props.goToPage(9);
    }

    endReservation(){
      this.props.fetchBooking(
          this.props.reservationState.reservation.name,
          this.props.reservationState.reservation.date,
          this.props.reservationState.reservation.hour,
          this.props.reservationState.reservation.numberOfPeople
      );
      ToastAndroid.show('reservation successfully', ToastAndroid.LONG);
      this.props.goToPage(0);
    }

    render() {
        var customers = [];
        for(let i = 0; i < this.props.counterState.Ncustomers; i++){
          customers.push(
            <View style={styles.customer} key={i}>
              <Image source={require('../img/ominoRosso.png')} style={styles.icon}/>
              <View style={styles.customer_info}>
                <InputGroup>
                        <Input  onChangeText={(text) => {this.setCustomerName(text,i)}} style={styles.customer_name} placeholder={this.state.nameVector[i]} />
                </InputGroup>
                <Text style={styles.customize_menu}>Personalizza il tuo menù</Text>
                {this.renderButton(i)}

              </View>
            </View>
          )
        }

        return (
          <Container>
            <View>
              <HeaderApp/>
            </View>
            <Content theme={appetizingTheme}>
              {customers}

            </Content>
            <Footer theme={appetizingTheme}>
              <Button style={styles.book_button}rounded block onPress={ () => { this.endReservation() } } >
                Prenota
              </Button>
            </Footer>
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

export default connect(mapStateToProps, mapDispatchToProps)(CustomersList);
