import 'package:redux/redux.dart';

enum AppoinmentStatus{
  canceled,
  confirmed
}

class Appoinment{
  String clinic = "";
  String professional = "";
  Speciality speciality;
  String date = "";
  var hour = "";
  var saved = false;
  AppoinmentStatus status;

}

//Actions
class UpdateClinic{
  String name;
}
class UpdateProfessional{
  String name;
}
class UpdateSpeciality{
  String name;
}
class UpdateDate{
  String date;
}

//Reducer
Appoinment appointmentReducer(state, action) {
  if(state == null){
    state = new Appoinment();
  }
  if (action is UpdateClinic) {
    state.clinic = action.name;
    return state;
  } else if (action is UpdateProfessional) {
    state.professional = action.name;
    return state;
  } else if (action is UpdateSpeciality) {
    state.speciality = action.name;
    return state;
  } else if (action is UpdateDate) {
    state.date = action.date;
    return state;
  }
  return state;
}
