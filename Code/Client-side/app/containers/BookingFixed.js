import React, { Component, PropTypes} from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux'
import { ActionCreators } from '../actions'
import HeaderApp from './HeaderApp'
import {
  Container,
  InputGroup,
  Input,
  List,
  ListItem,
  Button,
  Icon,
  Content,
  Footer,
  H3
 } from 'native-base';
import appetizingTheme from '../Themes/appetizingTheme';
import { styles } from '../styles/styles';
import { RadioButtons } from 'react-native-radio-buttons';
import {
    View,
    Navigator,
    Image,
    ScrollView,
    StyleSheet,
    Dimensions,
    ToastAndroid,
    Text,
    TouchableWithoutFeedback ,
    ListView
} from 'react-native';

var CalendarPicker = require('react-native-calendar-picker');
import moment from 'moment';

const customDayHeadings = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
const customMonthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May',
'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

class BookingFixed extends Component {



    constructor(props) {
        super(props);
        var ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2});
        var data = ['19:30','20:00','20:30','21:00'];
        this.state = {
          reservationName: 'res'+Math.floor((Math.random() * 10000) + 1),
          date: new Date(),
          selectedIndex:0,
          options:[]
        };
    }
    componentWillMount(){
      for (var i = 0; i < this.props.restaurantState.selectedRestaurant.orari.length; i++) {
        this.setOption( this.props.restaurantState.selectedRestaurant.orari[i].hour);
      }
    }

    setOption(hour){
      var newOptions = Object.assign(this.state.options);
      newOptions.push(String(hour));
      this.setState({options: newOptions})
      
    }

    renderSelected(selected){
      var style = selected ? { fontWeight: 'bold',fontSize:25} : {fontSize:15};
      return style;
    }

    setSelectedOption(selectedIndex){
      this.setState(  {
      reservationName:this.state.reservationName,date:this.state.date,options:this.state.options,  selectedIndex: selectedIndex
      });
    }

    formatDate(dateObj){
      var month = dateObj.getUTCMonth() + 1; //months from 1-12
      var day = dateObj.getUTCDate();
      var year = dateObj.getUTCFullYear();

      var newdate = day + "/" + month + "/" + year  ;

      return newdate;

    }

    endReservation(){
      this.props.setFixedReservationInfo(this.formatDate(this.state.date),this.state.reservationName,this.props.counterState.Ncustomers,this.state.options[this.state.selectedIndex]);
      this.props.fetchBooking(
          this.state.reservationName,
          this.formatDate(this.state.date),
          this.state.options[this.state.selectedIndex],
          this.props.counterState.Ncustomers
      );
      ToastAndroid.show('reservation successfully', ToastAndroid.LONG);
      this.props.goToPage(0);
    }

    render() {


        return (



          <Container>
            <View>
              <HeaderApp/>
            </View>

            <Content theme={appetizingTheme}>
            <View>


              <View style={styles.booking_name}>
                  <View style={styles.b_name}>
                        <Text >Nome prenotazione</Text>
                   </View>
                  <InputGroup style={styles.input_name}>
                          <Input onChangeText={(text) => {this.setState(Object.assign({reservationName:text , date:this.state.date,dataSource:this.state.dataSource,selectedIndex:this.state.selectedIndex}))}} placeholder={this.state.reservationName} />
                  </InputGroup>
              </View>
              <View style={styles.booking_name}>

                <View style={styles.b_name}>
                 <Text >Data</Text>
                </View>

                <InputGroup style={styles.input_name}>
                        <Input placeholder={ moment(this.state.date).format('MMMM DD YYYY') } />
                </InputGroup>

              </View>

              <View style={styles.calendar}>

                <CalendarPicker
                   selectedDate={this.state.date}
                   onDateChange={(date)=>this.setState({ date: date })}
                   screenWidth={Dimensions.get('window').width}
                   selectedBackgroundColor={'#5ce600'}
                   style={{}}/>
              </View>
              <View >
              <H3 style={{padding:5}}>Orari disponibili</H3>
              <RadioButtons

                options={ this.state.options }
                onSelection={(selectedOption, selectedIndex) => {this.setSelectedOption(selectedIndex);}    }
                selectedIndex={this.state.selectedIndex }
                renderOption={ (option, selected, onSelect, index) =>{
                  return (

                   <TouchableWithoutFeedback onPress={onSelect} key={index}>
                     <View style={styles.single_radio_container}>
                        <Text style={this.renderSelected(selected)}>{option}</Text>
                     </View>
                   </TouchableWithoutFeedback>
                 );
                }}
                renderContainer={(optionNodes) =>{return <View style={styles.radio_container}  >{optionNodes}</View> } }


              />
              </View>

              </View>
            </Content>

            <Footer theme={appetizingTheme}>
              <View style={styles.c_name}>
                    <Text >N° Persone</Text>
              </View>

              <View style={styles.counter_n_customers}>
                <Text style={styles.count}>{this.props.counterState.Ncustomers}</Text>
                <Button style={styles.button_count} onPress={ () =>this.props.increment()}>+</Button>
                <Button style={styles.button_count} onPress={ () =>this.props.decrement()}>-</Button>
              </View>

              <View style={styles.book}>
                <Button onPress={ () => { this.endReservation() } }>Prenota</Button>
              </View>
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

export default connect(mapStateToProps, mapDispatchToProps)(BookingFixed);
