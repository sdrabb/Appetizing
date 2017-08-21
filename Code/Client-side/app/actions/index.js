import * as NavigationActions from './navigation'
import * as RestaurantActions from './restaurants'
import * as CounterActions from './counter'
import * as VariableMenuActions from './variableMenu'
import * as ReservationActions from './reservation'

export const ActionCreators = Object.assign({},
    NavigationActions,
    RestaurantActions,
    CounterActions,
    VariableMenuActions,
    ReservationActions

);
