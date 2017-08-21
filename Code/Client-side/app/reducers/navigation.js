import * as types from '../actions/types'
import createReducer from '../lib/createReducer'

// navigation reducers



// array of functions
const allTabs = [
    (lastRoute) => lastRoute || Object.assign({ name: 'Appetizing', index: 0, r_icon: 'google-maps',linked_page: 1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Map', index: 1, r_icon: 'list-ul', linked_page: 0 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Restaurant Description', index: 2, r_icon: '', linked_page: -1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Menu', index: 3, r_icon: '', linked_page: -1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Prenotazione', index: 4, r_icon: '', linked_page: -1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Lista clienti', index: 5, r_icon: '', linked_page: -1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Prenotazione', index: 6, r_icon: '', linked_page: -1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Prenotato', index: 7, r_icon: '', linked_page: -1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Mappa', index: 8, r_icon: '', linked_page: -1 }),
    (lastRoute) => lastRoute || Object.assign({ name: 'Menu alla carta', index: 9, r_icon: '', linked_page: -1 })



];

var indexStory = []

export const navigationState = createReducer( Object.assign( { indexStory: indexStory }, allTabs[0]()   )   , {
    [types.NAVIGATION_GO_TO_PAGE](state, action) {
      if(action.index>=0){
        var newIndexStory = Object.assign(state.indexStory);
        if ( (action.previousIndex!=9 || action.index!=5) && (action.previousIndex!=5 || action.index!=9) &&  (action.previousIndex!=1 || action.index!=2) ) {
            newIndexStory.push(action.previousIndex);
        }
        return Object.assign( allTabs[action.index](), {indexStory: newIndexStory} ) ;
      }
      else
        return Object.assign( allTabs[state.index](), ) ;
    },
    [types.NAVIGATION_BACKWARD](state, action) {
      if(state.index>=0){
        var previousIndexInHistory = state.indexStory.pop();
        var newIndexStory = state.indexStory.slice();
        return Object.assign( allTabs[previousIndexInHistory](), {indexStory: newIndexStory} ) ;
      }
    }
});
