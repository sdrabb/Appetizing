import React, { Navigator,Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import {ScrollView, View, StyleSheet,TouchableHighlight} from 'react-native';
import MapView from 'react-native-maps';
import { styles } from '../styles/styles';
import ScrollableTabView, { DefaultTabBar, } from 'react-native-scrollable-tab-view';
import {  Button } from 'native-base';
import VariableMenuList from './VariableMenuList';
import GalleryView from './GalleryView';
import appetizingTheme from '../Themes/appetizingTheme';

import {
  Container,
  Content,
  Icon,
  List,
  ListItem,
  Text,
  Footer,
  Header,
  Title

 } from 'native-base';
class FixedMenuView extends Component {

    concludeAndbackToCustomer(){
      this.props.setVariableSingleMenu();
      this.props.goToPage(5);
    }


    render() {
        return (
              <View style={{flex: 1}}>

              <ScrollView>
              <View>
                <Header theme={appetizingTheme}>

                  <Title>{this.props.navigationState.name}</Title>
                </Header>
              </View>
              <ScrollableTabView
              tabBarInactiveTextColor='#4E5152'
              tabBarActiveTextColor='#000000'
              tabBarUnderlineStyle = {styles.tab_bar}
              renderTabBar={()=><DefaultTabBar  />}
              >
                <VariableMenuList tabLabel= 'Menu'/>

                <GalleryView tabLabel= 'Galleria'/>

              </ScrollableTabView>
              </ScrollView>


               <Footer theme={appetizingTheme} >
                 <Button rounded block  onPress={() => {this.concludeAndbackToCustomer()}} >
                   <Text> Prenota  (Prezzo Totale  {this.props.variableMenuState.total }  € )  </Text>
                 </Button>
              </Footer>
            </View>








                    )
    }
}



function mapDispatchToProps(dispatch) {
    return bindActionCreators(ActionCreators, dispatch);
}

//The mapStateToProps function takes a single argument of the entire Redux store’s state and returns an object to be passed as props.
function mapStateToProps(state) {
    return {
        navigationState: state.navigationState,
        restaurantState: state.restaurantState,
        counterState: state.counterState,
        variableMenuState: state.variableMenuState,
        reservationState: state.reservationState,

    };
}

export default connect(mapStateToProps, mapDispatchToProps)(FixedMenuView);
