import React, { Component } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'

import {
  Container,
  Header,
  Title,
  Content,
  Button,
  InputGroup,
  Input,
  Icon,
  List,
  ListItem,
  Thumbnail
 } from 'native-base';
import Icon2 from 'react-native-vector-icons/Foundation';


import {
    View,
    StatusBar,
    Navigator,
    BackAndroid,
} from 'react-native';
import appetizingTheme from '../Themes/appetizingTheme';
import { styles } from '../styles/styles';


class HeaderApp extends Component {

    renderBackButton(){
      if (this.props.navigationState.index != 0 && this.props.navigationState.index!=1){
        var backButton = <Button transparent  onPress={ () => { this.props.navigationBackward() } } >
                            <Icon name='ios-arrow-back' />
                          </Button>
      }else{
        var backButton = <Button transparent>
                        <View></View>
                     </Button>
      }
      return backButton;

    }

    renderRightButton(){
      if (this.props.navigationState.linked_page != -1){
        if(this.props.navigationState.index==0){
        var rightButton = <Button transparent  onPress={ () => { this.props.goToPage(this.props.navigationState.linked_page) } } >
                            <Icon2 style={styles.map }  name={'map'}/>
                         </Button>
        }else{
          var rightButton = <Button transparent  onPress={ () => { this.props.goToPage(this.props.navigationState.linked_page) } } >
                              <Icon style={styles.map_button } theme={{ iconFamily: 'FontAwesome' }} name={this.props.navigationState.r_icon}/>
                           </Button>
        }
      }else{
        var rightButton =<Button transparent >
                           <View></View>
                         </Button>
      }
      return rightButton;
    }

    renderName(){
      if(this.props.navigationState.index==2){
        return <Title>{this.props.restaurantState.selectedRestaurant.name}</Title>
      }else{
        return <Title>{this.props.navigationState.name}</Title>

      }
    }


    render() {

      return (
            <Header theme={appetizingTheme}>
              {this.renderBackButton()}
              {this.renderName()}
              {this.renderRightButton()}
            </Header>
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

export default connect(mapStateToProps, mapDispatchToProps)(HeaderApp);
