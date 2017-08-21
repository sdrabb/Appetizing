import React, { Component, PropTypes } from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import { Text,Modal,Image,View,ScrollView, StyleSheet,TouchableHighlight} from 'react-native';
import MapView from 'react-native-maps';
import { styles } from '../styles/styles';
import { Icon,Content,Container, DeckSwiper, Card, CardItem, Thumbnail,Header,Button,Title} from 'native-base';
import appetizingTheme from '../Themes/appetizingTheme';

class GalleryView extends Component{

  state = {
    modalVisible: false,
    id:0,
    cards : this.initCards(),
    indexes:this.initIndexes()
  }

  initCards(){
    var food=[];
    var menu=this.props.restaurantState.selectedMenu;
    var count=0;
    if(menu.antipasti.length>0){
      for (var i = 0; i < menu.antipasti.length; i++) {
          food.push(Object.assign({piatto:menu.antipasti[i],id:count}));
          count=count+1;

      }
    }
    if(menu.primi.length>0){
      for (var i = 0; i < menu.primi.length; i++) {
        food.push(Object.assign({piatto:menu.primi[i],id:count}));
        count=count+1;
      }
    }
    if(menu.secondi.length>0){
      for (var i = 0; i < menu.secondi.length; i++) {
        food.push(Object.assign({piatto:menu.secondi[i],id:count}));
        count=count+1;
      }
    }
    if(menu.dolci.length>0){
      for (var i = 0; i < menu.dolci.length; i++) {
        food.push(Object.assign({piatto:menu.dolci[i],id:count}));
        count=count+1;
      }
    }

    return food;
  }

  initIndexes(){
    var initIndexes=[];
    var menu=this.props.restaurantState.selectedMenu;
    var length=menu.antipasti.length+menu.primi.length+menu.secondi.length+menu.dolci.length;
    for (var i = 0; i <length ; i++) {
      initIndexes[i]=i;
    }
    return initIndexes;
  }

  setImagePrams(id){
    this.setState({id: id});

  }
  setModalVisible(visible) {
    this.setState({modalVisible: visible});
  }
  setCards(id){
    var newCards=[];
    var cards=this.state.indexes;
    for (var i=id;i<cards.length;i++){
      newCards.push(cards[i]);
    }
    for(var i=0;i<id;i++){
      newCards.push(cards[i]);
    }
    this.setState({indexes: newCards});

  }
  renderPhoto(){

      var renderedEl=<Modal
                     animationType={"slide"}
                     visible={this.state.modalVisible}
                     onRequestClose={() => {this.setModalVisible(!this.state.modalVisible)}}
                     >
                     <Container>
                       <View>
                         <Header theme={appetizingTheme}>
                            <Button transparent  onPress={ () => {this.setModalVisible(!this.state.modalVisible); this.setState({id: 0});  this.setState({indexes: this.initIndexes()});}} >
                                               <Icon name='ios-arrow-back' />
                                             </Button>
                             <Title>{this.props.navigationState.name}</Title>
                         </Header>
                       </View>
                       <View >
                           <DeckSwiper

                               onSwipeRight={()=>console.log("Avanti")}
                               onSwipeLeft={()=>console.log("indietro")}
                               dataSource={this.state.indexes}
                               renderItem={index =>
                                   <Card style={{ elevation: 5 }}>

                                      <CardItem>
                                           <Text>{this.state.cards[index].piatto.name}</Text>
                                       </CardItem>
                                       <CardItem>
                                           <Image style={{ resizeMode: 'cover', width: null }} source={{uri:this.state.cards[index].piatto.thumbnail}} />
                                       </CardItem>
                                       <CardItem>
                                          <Text>{this.state.cards[index].piatto.description}</Text>
                                       </CardItem>

                                   </Card>
                               }
                           />
                      </View>

                     </Container>
                    </Modal>;


      return renderedEl;
  }




  renderPiatto(piattoList){

    var counter = 0;
    var list = [];
    piattoList.map((card,index) => (

    list.push(
              <TouchableHighlight style={styles.box} key={index} onPress={() => { this.setModalVisible(!this.state.modalVisible);
                                                                  this.setCards(card.id)
                                                                  }}>

              <View style={styles.boxImage} >

                <Image
                   style={ styles.lightbox_img_container_inactive  }
                   resizeMode="cover"
                   source={{ uri: card.piatto.thumbnail }}
                 />
              </View>
              </TouchableHighlight>)

    ))
    return list;
  }


  render() {

    return (
      <ScrollView style={styles.container}>

        <View style={styles.container_list} >
          {this.renderPhoto()}
          <View style={styles.list} >
            {this.renderPiatto(this.state.cards)}
          </View>
        </View>


      </ScrollView>

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
export default connect(mapStateToProps, mapDispatchToProps)(GalleryView);
