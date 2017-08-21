import React, { Navigator,Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import {ScrollView, View, StyleSheet,TouchableHighlight} from 'react-native';
import { styles } from '../styles/styles';
import ScrollableTabView, { DefaultTabBar, } from 'react-native-scrollable-tab-view';
import {  Button } from 'native-base';
import HeaderApp from './HeaderApp';
import FixedMenuList from './FixedMenuList';
import GalleryView from './GalleryView';
import appetizingTheme from '../Themes/appetizingTheme';

import {
  Container,
  Content,
  Icon,
  List,
  ListItem,
  Text,
  Footer
 } from 'native-base';
class FixedMenuView extends Component {

    render() {
        return (
              <View style={{flex: 1}}>

                  <View>
                    <HeaderApp/>
                  </View>
                  <Content theme={appetizingTheme}>
                    <ScrollableTabView
                    tabBarInactiveTextColor='#4E5152'
                    tabBarActiveTextColor='#000000'
                    tabBarUnderlineStyle = {styles.tab_bar}
                    renderTabBar={()=><DefaultTabBar  />}
                    >
                      <FixedMenuList tabLabel= 'Menu'/>

                      <GalleryView tabLabel= 'Galleria'/>

                    </ScrollableTabView>
                  </Content>


                <Footer theme={appetizingTheme} >
                  <Button rounded block onPress={() => {this.props.goToPage(6)}} >
                    Prenota  (Prezzo Totale  {this.props.restaurantState.selectedMenu.price}  € )
                  </Button>
               </Footer>
              </View>
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

export default connect(mapStateToProps, mapDispatchToProps)(FixedMenuView);
