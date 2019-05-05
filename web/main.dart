import 'package:redux/redux.dart';
import 'dart:html';
import 'dart:async';
import 'core.dart';

main() {
  // Create the store with our Reducer and Middleware
  final store = new Store<int>(
    counterReducer,
    initialState: 0,
    middleware: [loggingMiddleware],
  );

  // Render our State right away
  render(store.state);

  // Listen to store changes, and re-render when the state is updated
  store.onChange.listen(render);

  // Attach a click handler to a button. When clicked, the `INCREMENT` action
  // will be dispatched. It will then run through the reducer, updating the
  // state.
  //
  // After the state changes, the html will be re-rendered by our `onChange`
  // listener above.
  querySelector('#increment').onClick.listen((_) {
    store.dispatch(Actions.increment);
  });

  querySelector('#decrement').onClick.listen((_) {
    store.dispatch(Actions.decrement);
  });
}

render(int state) {
  querySelector('#value').innerHtml = '${state}';
}
