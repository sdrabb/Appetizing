import * as types from '../actions/types';
import createReducer from '../lib/createReducer'



export const counterState = createReducer(  Object.assign(  {Ncustomers:1}   )  , {
    [types.COUNTER_INCREMENT](state, action) {
            return Object.assign( {Ncustomers:state.Ncustomers+1}  ) ;
    },
    [types.COUNTER_DECREMENT](state, action) {
            if(state.Ncustomers>1){
                return Object.assign( {Ncustomers:state.Ncustomers-1} );
            }else{
              return Object.assign( {Ncustomers:1} );
            }
    },
    [types.COUNTER_RESET](state, action) {
            return Object.assign( {Ncustomers:1}  ) ;
    },
});
