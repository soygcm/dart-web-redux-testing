import 'package:redux/redux.dart';


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
