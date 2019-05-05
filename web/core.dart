import 'package:redux/redux.dart';


// Create typed actions. You will dispatch these in order to
// update the state of your application.
enum Actions {
  increment,
  decrement,
}

// Create a Reducer. A reducer is a pure function that takes the
// current State (int) and the Action that was dispatched. It should
// combine the two into a new state without mutating the state passed
// in! After the state is updated, the store will emit the update to
// the `onChange` stream.
//
// Because reducers are pure functions, they should not perform any
// side-effects, such as making an HTTP request or logging messages
// to a console. For that, use Middleware.
int counterReducer(int state, action) {
  if (action == Actions.increment) {
    return state + 1;
  } else if (action == Actions.decrement) {
    return state - 1;
  }

  return state;
}

// A piece of middleware that will log all actions with a timestamp
// to your console!
//
// Note, this is just an example of how to write your own Middleware.
// See the redux_logging package on pub for a pre-built logging
// middleware.
loggingMiddleware(Store<int> store, action, NextDispatcher next) {
  print('${new DateTime.now()}: $action');

  next(action);
}
