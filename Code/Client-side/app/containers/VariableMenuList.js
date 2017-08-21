import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import {Modal,Image,View,ScrollView, StyleSheet,TouchableHighlight,TouchableWithoutFeedback} from 'react-native';
import MapView from 'react-native-maps';
import { styles } from '../styles/styles';
import CheckBox from 'react-native-check-box'
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





class VariableMenuList extends Component {

  state = {
    modalVisible: false,
    uri:null,
    description:null,
    selectedMenu: [],
    checkValuesAntipasti: this.createCheckBoxValues(this.props.restaurantState.selectedMenu.antipasti,0),
    checkValuesPrimi: this.createCheckBoxValues(this.props.restaurantState.selectedMenu.primi,1),
    checkValuesSecondi: this.createCheckBoxValues(this.props.restaurantState.selectedMenu.secondi,2),
    checkValuesDolci: this.createCheckBoxValues(this.props.restaurantState.selectedMenu.dolci,3),
    totalSum: 0
  }


  createCheckBoxValues(arrayList,type){
    var values = [];

    if (this.props.variableMenuState.selectedMenu!=null) {
      var variableMenuSelection = this.props.variableMenuState.selectedMenu;

      for (var i = 0; i < arrayList.length ; i++) {
        values[i] = Object.assign({ checked:false });
        if(type==0 && this.isIndexFound(arrayList[i].id,variableMenuSelection.antipasti) ){
          values[i] = Object.assign({ checked:true });
        }


        if(type==1 && this.isIndexFound(arrayList[i].id,variableMenuSelection.primi) )
            values[i] = Object.assign({ checked:true });

        if(type==2 && this.isIndexFound(arrayList[i].id,variableMenuSelection.secondi) )
            values[i] = Object.assign({ checked:true });

        if(type==3 && this.isIndexFound(arrayList[i].id,variableMenuSelection.dolci) )
            values[i] = Object.assign({ checked:true });

      }
    }

    else {
        for (var i = 0; i < arrayList.length ; i++) {
          values[i] = Object.assign({ checked:false });
        }
    }

    return values;
  }

  isIndexFound(index,arrayList){
    var isFound = false;
    if(typeof arrayList !== 'undefined' && arrayList.length > 0){
      var orderedMenus = Object.assign(arrayList);

      for (var i = 0; i < orderedMenus.length; i++) {

        if(orderedMenus[i].id == index){
          isFound = true;
        }
      }
    }
    return isFound;
  }

  toggleCheckboxTrue(type,index,obj){
    var valuesMenu;
    if (type==0) {

      this.state.checkValuesAntipasti[index].checked = !this.state.checkValuesAntipasti[index].checked;
      this.setState({checkValuesAntipasti: this.state.checkValuesAntipasti });
      if (this.state.checkValuesAntipasti[index].checked) {
        this.props.addEl(obj,type);
      }
      else {
          this.props.removeEl(obj.id,type)
      }
    }
    if (type==1) {
      this.state.checkValuesPrimi[index].checked = !this.state.checkValuesPrimi[index].checked;
      this.setState({checkValuesPrimi: this.state.checkValuesPrimi});

      if (this.state.checkValuesPrimi[index].checked) {
        this.props.addEl(obj,type);
      }
      else {
          this.props.removeEl(obj.id,type)
      }
    }
    if (type==2) {
      this.state.checkValuesSecondi[index].checked = !this.state.checkValuesSecondi[index].checked;
      this.setState({checkValuesSecondi: this.state.checkValuesSecondi});

      if (this.state.checkValuesSecondi[index].checked) {
        this.props.addEl(obj,type);
      }
      else {
          this.props.removeEl(obj.id,type)
      }
    }
    if (type==3) {
      this.state.checkValuesDolci[index].checked = !this.state.checkValuesDolci[index].checked;
      this.setState({checkValuesDolci: this.state.checkValuesDolci});

      if (this.state.checkValuesDolci[index].checked) {
        this.props.addEl(obj,type);
      }
      else {
          this.props.removeEl(obj.id,type)
      }
    }

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

  renderPiattoOfAntipasto(piattoList){

    var list = [];
    piattoList.map((piatto,index) => (
      list.push(
        <ListItem key = {index}>
        <TouchableWithoutFeedback style={styles.fixed_menu_list_item } onPress={() => { this.setImagePrams(piatto.thumbnail,piatto.description);this.setModalVisible(!this.state.modalVisible);}} >
        <View>


          <View style={styles.variable_menu_icon_container }>
            <Text style={styles.food_name}>{piatto.name}</Text>
            <Text style={styles.fixed_menu_list_item }>{piatto.price}€</Text>
            <CheckBox
                style={styles.checkbox }
                isChecked={this.state.checkValuesAntipasti[index].checked}

                onClick={() => { this.toggleCheckboxTrue(0,index,piatto) }}
              />
          </View>
        </View>

        </TouchableWithoutFeedback>
      </ListItem>)
    ))
    return list;
  }

  renderPiattoOfPrimo(piattoList){

    var list = [];
    piattoList.map((piatto,index) => (
      list.push(<ListItem key = {index}>
        <TouchableWithoutFeedback style={styles.fixed_menu_list_item } onPress={() => { this.setImagePrams(piatto.thumbnail,piatto.description);this.setModalVisible(!this.state.modalVisible);}} >
        <View>


          <View style={styles.variable_menu_icon_container }>
          <Text style={styles.food_name}>{piatto.name}</Text>
          <Text style={styles.fixed_menu_list_item }>{piatto.price}€</Text>
            <CheckBox
              style={styles.checkbox }
              isChecked={this.state.checkValuesPrimi[index].checked}

              onClick={() => { this.toggleCheckboxTrue(1,index,piatto) }}
            />

          </View>
        </View>

        </TouchableWithoutFeedback>

      </ListItem>)
    ))
    return list;
  }

  renderPiattoOfSecondo(piattoList){

    var list = [];
    piattoList.map((piatto,index) => (
      list.push(<ListItem key = {index}>
        <TouchableWithoutFeedback style={styles.fixed_menu_list_item } onPress={() => { this.setImagePrams(piatto.thumbnail,piatto.description);this.setModalVisible(!this.state.modalVisible);}} >
        <View>


          <View style={styles.variable_menu_icon_container }>

          <Text style={styles.food_name}>{piatto.name}</Text>
          <Text style={styles.fixed_menu_list_item }>{piatto.price}€</Text>
            <CheckBox
              style={styles.checkbox }
              isChecked={this.state.checkValuesSecondi[index].checked}

              onClick={() => { this.toggleCheckboxTrue(2,index,piatto) }}
            />

          </View>
        </View>

        </TouchableWithoutFeedback>

      </ListItem>)
    ))
    return list;
  }

  renderPiattoOfDolce(piattoList){

    var list = [];
    piattoList.map((piatto,index) => (
      list.push(<ListItem key = {index}>
        <TouchableWithoutFeedback style={styles.fixed_menu_list_item } onPress={() => { this.setImagePrams(piatto.thumbnail,piatto.description);this.setModalVisible(!this.state.modalVisible);}} >
        <View >
          <View style={styles.variable_menu_icon_container }>
            <Text style={styles.food_name}>{piatto.name}</Text>
            <Text style={styles.fixed_menu_list_item }>{piatto.price}€</Text>
            <CheckBox
                style={styles.checkbox }
                isChecked={this.state.checkValuesDolci[index].checked}

                onClick={() => { this.toggleCheckboxTrue(3,index,piatto) }}
            />
          </View>
        </View>

        </TouchableWithoutFeedback>

      </ListItem>)
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
                {this.renderPiattoOfAntipasto(this.props.restaurantState.selectedMenu.antipasti)}
                <ListItem itemDivider>
                  <Text>Primi</Text>
                </ListItem>
                {this.renderPiattoOfPrimo(this.props.restaurantState.selectedMenu.primi)}
                <ListItem itemDivider>
                  <Text>Secondi</Text>
                </ListItem>
                {this.renderPiattoOfSecondo(this.props.restaurantState.selectedMenu.secondi)}

                <ListItem itemDivider>
                  <Text>Dolci</Text>
                </ListItem>
                {this.renderPiattoOfDolce(this.props.restaurantState.selectedMenu.dolci)}
              </List>
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

export default connect(mapStateToProps, mapDispatchToProps)(VariableMenuList);
