import * as types from '../actions/types'
import createReducer from '../lib/createReducer'



export const variableMenuState = createReducer(  Object.assign(  {selectedMenu: null,total:0,name:null,index:null}   )  , {
    [types.VMENU_ADD_EL](state, action) {
            if (action.from == 0 ){

              var menu = [];
              if (state.selectedMenu!=null){
                menu = state.selectedMenu.antipasti.slice();
                menu.push(action.el);
                menu = {antipasti:menu, primi: state.selectedMenu.primi , secondi:state.selectedMenu.secondi ,dolci:state.selectedMenu.dolci};
              }
              if (state.selectedMenu==null){

                menu.push(action.el);
                menu = {antipasti:menu , primi: [] , secondi:[] ,dolci:[]};
              }
              return Object.assign( { selectedMenu: menu ,total:countTotal(menu),name:state.name,index:state.index} );
            }

            if (action.from == 1 ){
              var menu = [];
              if (state.selectedMenu!=null){
                menu = state.selectedMenu.primi.slice();
                menu.push(action.el);
                menu = {antipasti:state.selectedMenu.antipasti, primi:menu , secondi:state.selectedMenu.secondi ,dolci:state.selectedMenu.dolci};
              }
              if (state.selectedMenu==null){

                menu.push(action.el);
                menu = {antipasti:[] , primi: menu , secondi:[] ,dolci:[]};
              }
                return Object.assign( { selectedMenu: menu ,total:countTotal(menu),name:state.name,index:state.index} );
            }

            if (action.from == 2 ){
              var menu = [];
              if (state.selectedMenu!=null){
                menu = state.selectedMenu.secondi.slice();
                menu.push(action.el);
                menu = {antipasti:state.selectedMenu.antipasti, primi: state.selectedMenu.primi, secondi:menu  ,dolci:state.selectedMenu.dolci};
              }
              if (state.selectedMenu==null){

                menu.push(action.el);
                menu = {antipasti:[] , primi: [] , secondi:menu ,dolci:[]};
              }
                return Object.assign( { selectedMenu: menu ,total:countTotal(menu),name:state.name,index:state.index} );
            }
            if (action.from == 3 ){
              var menu = [];
              if (state.selectedMenu!=null){
                menu = state.selectedMenu.dolci.slice();
                menu.push(action.el);
                menu = {antipasti:state.selectedMenu.antipasti, primi: state.selectedMenu.primi, secondi:state.selectedMenu.secondi  ,dolci:menu};
              }
              if (state.selectedMenu==null){

                menu.push(action.el);
                menu = {antipasti:[] , primi: [] , secondi:[] ,dolci:menu};
              }
                return Object.assign( { selectedMenu: menu ,total:countTotal(menu),name:state.name,index:state.index} );
            }

              },
    [types.VMENU_REMOVE_EL](state, action) {
          if (action.from == 0) {
              removeElById(action.id,state.selectedMenu.antipasti)
          }
          if (action.from == 1) {
              removeElById(action.id,state.selectedMenu.primi)
          }
          if (action.from == 2) {
              removeElById(action.id,state.selectedMenu.secondi)
          }
          if (action.from == 3) {
              removeElById(action.id,state.selectedMenu.dolci)
          }
         return Object.assign( { selectedMenu: state.selectedMenu ,total:countTotal(state.selectedMenu),name:state.name,index:state.index} );
    },
    [types.VMENU_ADD_NAME_INDEX](state, action) {
         return Object.assign( { selectedMenu: state.selectedMenu ,total:countTotal(state.selectedMenu), name:action.name,index:action.index} );
    },
    [types.VMENU_RESET](state, action) {
         return Object.assign( {selectedMenu: null,total:0,name:null,index:null} );
    },
    [types.VMENU_ADD_MENU](state, action) {
        
         return Object.assign( { selectedMenu: action.passedMenu.menu ,total:countTotal(action.passedMenu.menu), name:action.passedMenu.customerName,index:action.passedMenu.index} );
    },


});

function removeElById(id,arrayList){
  var index;
  for (var i = 0; i < arrayList.length; i++) {
    if(arrayList[i].id==id){
      index=i;
    }
  }
  return arrayList.splice(index, 1);

}

function countTotal(menu){
  var total=0;
  if (menu!=null) {
    menu.antipasti.map(function(piatto){
      total = parseFloat(piatto.price)+parseFloat(total);
    });
    menu.primi.map(function(piatto){
      total = parseFloat(piatto.price)+parseFloat(total);
    });
    menu.secondi.map(function(piatto){
      total = parseFloat(piatto.price)+parseFloat(total);
    });
    menu.dolci.map(function(piatto){
      total = parseFloat(piatto.price)+parseFloat(total);
    });
  }
  return total;

}
