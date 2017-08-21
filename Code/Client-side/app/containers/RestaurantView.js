import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import {
  Container,
  Header,
  List,
  ListItem,
  Thumbnail,
  Button,
  Icon,
  Title,
  Content,
  Footer,
  H3,
  H2
 } from 'native-base';
import appetizingTheme from '../Themes/appetizingTheme';
import { styles } from '../styles/styles';
import MapView from 'react-native-maps';
import HeaderApp from './HeaderApp';
import {
    View,
    Navigator,
    Image,
    StyleSheet,
    Text,
    TouchableHighlight
} from 'react-native';

import StarRating from 'react-native-star-rating';

class RestaurantView extends Component {

    renderCompleteMenuButton(){
      if (this.props.restaurantState.selectedRestaurant.complete_menu != null) {
        return <Button rounded block onPress={ () => { this.props.goToPage(4); this.props.selectMenu(0,true); } }>Scegli dal menù</Button>;

      }
    }

    renderMenuPrice(menu){
      var total =0;
      for (var i = 0; i < menu.antipasti.length; i++) {
        total = total+ parseFloat(menu.antipasti[i].price);
      }

      for (var i = 0; i < menu.primi.length; i++) {
        total = total+ parseFloat(menu.primi[i].price)
      }

      for (var i = 0; i < menu.secondi.length; i++) {
        total = total+ parseFloat(menu.secondi[i].price)
      }

      for (var i = 0; i < menu.dolci.length; i++) {
        total = total+ parseFloat(menu.dolci[i].price)
      }
      return String(total)+'€';
    }

    render() {

        var items = this.props.restaurantState.selectedRestaurant.menus;

        return (
          <Container>
          <View>
            <HeaderApp/>
          </View>

            <Content theme={appetizingTheme}>

              <Image
                style={styles.image_restaurant}
                source={{uri: this.props.restaurantState.selectedRestaurant.thumbnail }}
              />
              <View style={styles.utility}>

                <View style={styles.options}>
                  <View style={styles.votes}>
                    <StarRating
                     disabled={true}
                     maxStars={5}
                     emptyStar={'ios-star-outline'}
                     fullStar={'ios-star'}
                     halfStar={'ios-star-half'}
                     iconSet={'Ionicons'}
                     rating={parseInt(this.props.restaurantState.selectedRestaurant.avg_vote)}
                     selectedStar={(rating) => this.onStarRatingPress(rating)}
                     starColor={'red'}
                     starSize={20}
                   />
                  </View>

                  <View style={styles.address}>
                    <H3> {this.props.restaurantState.selectedRestaurant.address}</H3>
                  </View>

                  <View style={styles.goto_map}>
                    <TouchableHighlight onPress={ () => { this.props.goToPage(8) } }>
                      <Image
                      style={styles.googleMap}
                      source={require('../img/googleMap.png')}
                      />
                    </TouchableHighlight>
                  </View>
                </View>

                <View style={styles.menu_section}>

                  <H2 style={styles.menu_title}>Menù consigliati per voi</H2>

                  <View style={styles.menu1}>
                    <List dataArray={items}
                        renderRow={(item) =>
                            <ListItem>
                                <View style={styles.menu_type}>
                                  <H3>{item.name}</H3>
                                </View>
                                <View style={styles.availability}>
                                  <H3>Disponibile</H3>
                                </View>
                                <View style={styles.goto_menu1}>
                                  <Button onPress={ () => { this.props.goToPage(3); this.props.selectMenu(item.id,false) } } >Visualizza</Button>
                                </View>
                                <View style={styles.price}>
                                  <H3>{this.renderMenuPrice(item)}</H3>
                                </View>
                            </ListItem>
                        }>
                    </List>
                  </View>

                </View>

              </View>
            </Content>

            <Footer  theme={appetizingTheme}>

              {this.renderCompleteMenuButton()}
            </Footer>
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

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantView);
