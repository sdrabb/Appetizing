import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import HeaderApp from './HeaderApp'
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
  Thumbnail,
  H2,
  H3
 } from 'native-base';
import appetizingTheme from '../Themes/appetizingTheme';
import { styles } from '../styles/styles';
import StarRating from 'react-native-star-rating';

import {
    View,
    Navigator,
    Image,
    StyleSheet,
    Text,
    ToastAndroid,
} from 'react-native';



class RestaurantList extends Component {

    constructor(props) {
        super(props);
        this.state = {
          starCount: 0,
          initialPosition:null,
        };
    }

    onStarRatingPress(rating) {
      this.setState({
        starCount: rating
      });
    }

    render() {
        return (
          <Container>
            <View>
              <HeaderApp/>
            </View>

            <Content theme={appetizingTheme}>

              <List
              dataArray = {this.props.restaurantState.restaurants}
              renderRow={(rowData) =>
                <ListItem style={styles.list_element} button onPress={ () => { this.props.selectRestaurant(rowData.id); this.props.goToPage(2)  }}>
                  <View style={styles.picture_list}>
                    <Thumbnail square size={80} source={{ uri: rowData.thumbnail }} />
                  </View>
                  <View style={styles.restaurant_info}>
                    <H2>  {rowData.name}</H2>
                    <View style={styles.stars}>
                      <StarRating
                       disabled={true}
                       maxStars={5}
                       emptyStar={'ios-star-outline'}
                       fullStar={'ios-star'}
                       halfStar={'ios-star-half'}
                       iconSet={'Ionicons'}
                       rating={parseInt(rowData.avg_vote)}
                       selectedStar={(rating) => this.onStarRatingPress(rating)}
                       starColor={'red'}
                       starSize={20}
                     />
                    </View>
                  </View>
                  <View style={styles.distance}>
                    <H3> {rowData.distance } Km</H3>
                  </View>
              </ListItem>
              }/>


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

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantList);
