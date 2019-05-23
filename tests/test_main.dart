import "package:test/test.dart";
import "package:salud_a_un_cilc/core/store.dart";
import 'package:redux/redux.dart';

main(){

  test("Actions.increment increment the state", () {
    store.dispatch(Actions.increment);
    expect(store.state, equals(1));
  });

  test("dispatching Actions.decrement the state should decrement by one", () {
    store.dispatch(Actions.decrement);
    expect(store.state, equals(-1));
  });

}
