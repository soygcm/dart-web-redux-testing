import "package:test/test.dart";
import 'main.dart';

main(){

  var state = new Appoinment();

  test("appointment reducer initial sate", () {
    expect(appointmentReducer(state, null).clinic, equals(""));
  });

  test("appointment reducer adding profesional", () {
    var action = new UpdateClinic();
    action.name = "Clinica";
    expect(appointmentReducer(state, action).clinic, equals("Clinica"));
  });

  test("appointment reducer adding clinic", () {
    var action = new UpdateProfessional();
    action.name = "Dentista";
    expect(appointmentReducer(state, action).clinic, equals("Clinica"));
    expect(appointmentReducer(state, action).professional, equals("Dentista"));
  });

  

}
