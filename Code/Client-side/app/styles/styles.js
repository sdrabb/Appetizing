import {Dimensions} from 'react-native';
var WINDOW_HEIGHT = Dimensions.get('window').height;
var WINDOW_WIDTH = Dimensions.get('window').width;


export const styles = {

//Restaurant List
  list_element:{
    flex:1,
    flexDirection:'row',
  },
  stars:{
     flexDirection:'row',
     //backgroundColor:'#FFF000',
     marginLeft:10
  },
  picture_list:{
    flex:2,
    justifyContent: 'center',
    alignItems: 'center',
  },
  restaurant_info:{
    flex:6,
    justifyContent: 'center',
    margin:20,

  },
  distance:{
    justifyContent: 'center',
    alignItems: 'center',
    flex:2,
  },

  //Restaurant View

  image_restaurant:{
    flex:3,
    height:200
  },
  utility:{
    flex:7,

  },
  options:{
    flex:3,
    flexDirection:'row'
  },
  menu_section:{
    flex:12,

  },
  votes:{
    justifyContent: 'center',
    alignItems: 'center',
    flexDirection:'row',
    flex:4,
    margin:15
  },
  address:{
    flex:5,
    justifyContent: 'center',
    alignItems: 'center',
    marginLeft:50
  },
  goto_map:{
    flex:2,
    justifyContent: 'center',
    alignItems: 'center',
    marginRight:5
  },
  map_button:{
    fontSize:21
  },
  googleMap:{
    height:50,
    width:50,
  },
  map:{
    fontSize:30,
    color:"#FFF"
  },
  menu_title:{
    flex:1,
    justifyContent: 'center',
    margin:13,
    //fontWeight: 'bold',
  },
  menu1:{
    flex:5,
  },
  menu2:{
    flex:3,
    flexDirection:'column',
    marginTop:60
  },
  menu_type:{
    flexDirection:'row',
    flex:3,
    justifyContent: 'center',
    alignItems: 'center'
  },
  availability:{
    flexDirection:'row',
    flex:3,
    justifyContent: 'center',
    alignItems: 'center'
  },
  goto_menu1:{
    flexDirection:'row',
    flex:3,
    justifyContent: 'center',
    alignItems: 'center'
  },
  price:{
    flexDirection:'row',
    flex:2,
    justifyContent: 'center',
    alignItems: 'center'
  },
  //BookingChoice
  booking_name:{
    flex:1,
    flexDirection:'row',
  },
  radio_container:{

    flex:1,
    flexDirection:'row',
    flexWrap:'wrap',
    justifyContent: 'center',
    alignItems: 'center'
  },
  single_radio_container:{
  margin:10
  },
  b_name:{
    flex:5,
    justifyContent: 'center',
    alignItems: 'flex-end'
  },
  input_name:{
    flex:5,
    paddingRight:100,
    alignItems: 'flex-start'

  },
  calendar:{
    flex:11
  },
  booking_info:{
    flex:4,
    //backgroundColor:'#FFF000'
  },

  grid_time:{
    flexDirection: 'row',
    flexWrap: 'wrap'
  },
  time:{
    margin: 5,
    width: 90
  },

  n_customers:{
    flex:2,
    flexDirection:'row',
    justifyContent: 'center',
    alignItems:'center',
    margin:20
  },
  c_name:{
    flex:3,
    justifyContent: 'center',
    marginLeft:5
  },
  counter_n_customers:{
    flex:5,
    //marginRight:170,
    flexDirection:'row',
    alignItems:'center',
  },
  count:{
    padding:10,
    marginRight:10,
    marginLeft:10,
    borderColor: '#000000',
    borderWidth: 1,
    borderStyle: 'solid',
  },
  button_count:{
    margin: 6,
    width: 30
  },
  book:{

    flex:4,
    flexDirection:'row',
    alignItems:'flex-end',
    justifyContent:'flex-end',
    //backgroundColor:'#FFF000',
  },

  //CustomersList

  customer:{
    height:220,
    flex:1,
    flexDirection:'row',
    borderColor: '#000000',
    borderWidth: 2,
    borderStyle: 'solid',
    margin:20,
    padding:2
  },
  icon:{
    height:210,
    width:180,
    flex:5,
  },
  customer_info:{
    flex:6,
  },
  customer_name:{
    borderColor: '#000000',
    borderWidth: 1,
    borderStyle: 'solid',
    marginTop: 30
  },
  customize_menu:{
    margin: 20
  },
  menu_button:{

  },
  book_button:{
    margin: 10
  },

  //FixedMenu

  text_price:{
    fontSize:12
  },
  total_price:{

    textAlign:'center'
  },

  fixed_menu_icon:{
    fontSize: 21,
  },
  fixed_menu_icon_container:{
    flexDirection:'row',
   flex:1,
   justifyContent: 'space-between',
   alignItems: 'center'
  },
  variable_menu_icon_container:{
    flexDirection:'row',
    flex:1,
    alignItems: 'center'
  },
  food_name:{
    flex:14,
    justifyContent: 'flex-end',
    alignItems: 'center',
  },
  fixed_menu_list_item:{
    flex:1.5,
    justifyContent: 'flex-end',
    alignItems: 'center',
  },
  checkbox:{
    flex:1,
    justifyContent: 'flex-end',
    alignItems: 'center',
  },
  tab_bar:{
    backgroundColor:'#979899',
    borderColor: '#ffffff',
  },

  photo_container:{
    justifyContent: 'center',
    alignItems: 'center',
    flexDirection:'row',
    flex:1
  },
  lightbox_img_container_inactive: {
    width: WINDOW_WIDTH/2,
    height: WINDOW_WIDTH/2,
    margin: 1

  },
  lightbox_img_container_active: {
    width: WINDOW_WIDTH,
    height: WINDOW_WIDTH,
    margin: 1

  },
  image_inside_lb_container:{
    width: WINDOW_WIDTH,
    height: WINDOW_WIDTH,
    justifyContent: 'flex-end',
    alignItems: 'center',
    flexDirection:'column',
    flex:1

  },
  image_caption_container:{
    backgroundColor:'rgba(9, 16, 15, 0.53)',
    width: WINDOW_WIDTH,
    height: 100,

  },
  image_caption:{

    color: 'white',
    textAlign: 'auto'
  },
  modal_img_container: {
    width: WINDOW_WIDTH,
    height: WINDOW_WIDTH,
    margin: 1,
    justifyContent: 'center',
    alignItems: 'center',
    flexDirection:'column',
    flex:1
  },
  image_inside_modal_container:{
    width: WINDOW_WIDTH,
    height: WINDOW_WIDTH/2,
    justifyContent: 'flex-end',
    alignItems: 'center',
    flexDirection:'column',
    flex:1

  }
  ,prenota_button:{
    width: WINDOW_WIDTH,

  },
  container_list: {
           flex: 1,
      },
      list: {
           flex: 1,
           flexDirection: 'row',
           flexWrap: 'wrap',
           justifyContent: 'center'
      },
      box: {
          width: 190,
          height: 190,
          alignItems: 'stretch',
          margin: 3
      },
      boxImage: {
          flex: 1
      },




}
