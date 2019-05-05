import "package:test/test.dart";
import "../web/core.dart";
import 'package:redux/redux.dart';

main(){

  final store = new Store<int>(
    counterReducer,
    initialState: 0,
    middleware: [loggingMiddleware],
  );

  // test("Actions.increment increment the state", () {
  //   store.dispatch(Actions.increment);
  //   expect(store.state, equals(1));
  // });

  test("dispatching Actions.decrement the state should decrement by one", () {
    store.dispatch(Actions.decrement);
    expect(store.state, equals(-1));
  });

}
