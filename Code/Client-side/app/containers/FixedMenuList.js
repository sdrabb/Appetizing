import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import { Modal,Image,View,ScrollView, StyleSheet,TouchableHighlight,TouchableWithoutFeedback} from 'react-native';
import MapView from 'react-native-maps';
import { styles } from '../styles/styles';
import appetizingTheme from '../Themes/appetizingTheme';

import {
  Button,
  Icon,
  List,
  ListItem,
  Text,
  Container,
  Header,
  Title
 } from 'native-base';
class FixedMenuList extends Component {

  state = {
    modalVisible: false,
    uri:null,
    description:null
  }

  setImagePrams(uri,description){
    this.setState({uri: uri, description:description});
  }
  setModalVisible(visible) {
    this.setState({modalVisible: visible});
  }

  renderPhoto(){
    var renderedEl=  <Modal
                   animationType={"slide"}
                   visible={this.state.modalVisible}
                   onRequestClose={() => {this.setModalVisible(!this.state.modalVisible)}}
                   >
                   <Container>
                     <View>
                       <Header theme={appetizingTheme}>
                          <Button transparent  onPress={ () => {this.setModalVisible(!this.state.modalVisible)}} >
                                             <Icon name='ios-arrow-back' />
                                           </Button>
                           <Title>{this.props.navigationState.name}</Title>
                       </Header>
                     </View>

                      <View   style={ styles.modal_img_container}>


                        <Image
                        style={ styles.image_inside_modal_container }
                        resizeMode="cover"
                        source={{ uri: this.state.uri }}
                        >


                        <View style={ styles.image_caption_container  }>
                          <Text style={ styles.image_caption }  >{this.state.description}</Text>
                        </View>

                      </Image>

                    </View>
                  </Container>
                  </Modal>;


      return renderedEl;
  }

  renderPiatto(piattoList){

    var list = [];
    piattoList.map((piatto,index) => (
      list.push(
        <ListItem key={index}>
        <TouchableWithoutFeedback   onPress={() => { this.setImagePrams(piatto.thumbnail,piatto.description);this.setModalVisible(!this.state.modalVisible);}} >
          <View style={styles.fixed_menu_icon_container }>
            <Text>{piatto.name}</Text>
            <View >
                <Text >{piatto.price}€</Text>
            </View>
          </View>
      </TouchableWithoutFeedback>
      </ListItem>

        )
    ))
    return list;
  }



    render() {
        return (
          <View >
          <ScrollView>
            {this.renderPhoto()}
            <View>
              <List>
              <ListItem itemDivider>
                <Text>Antipasti</Text>
              </ListItem>
              {this.renderPiatto(this.props.restaurantState.selectedMenu.antipasti)}
              <ListItem itemDivider>
                <Text>Primi</Text>
              </ListItem>
              {this.renderPiatto(this.props.restaurantState.selectedMenu.primi)}
              <ListItem itemDivider>
                <Text>Secondi</Text>
              </ListItem>
              {this.renderPiatto(this.props.restaurantState.selectedMenu.secondi)}
              </List>
              <ListItem itemDivider>
                <Text>Dolci</Text>
              </ListItem>
              {this.renderPiatto(this.props.restaurantState.selectedMenu.dolci)}

            </View>
          </ScrollView>


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
      counterState: state.counterState,
      variableMenuState: state.variableMenuState,
        navigationState: state.navigationState,
        restaurantState: state.restaurantState,
        reservationState: state.reservationState,

    };
}

export default connect(mapStateToProps, mapDispatchToProps)(FixedMenuList);
