import 'package:redux/redux.dart';

// enum AppoinmentStatus{
//   canceled,
//   confirmed
// }

class Clinic{
  String name;
  String id;
  List<Speciality> specialities;
}

//Actions
// class UpdateClinic{
//   String name;
// }


//Reducer
// AppoinmentState appointmentReducer(state, action) {
//   if(state == null){
//     state = new AppoinmentState();
//   }
//   if (action is UpdateClinic) {
//     state.clinic = action.name;
//     return state;
//   } else if (action is UpdateProfessional) {
//     state.professional = action.name;
//     return state;
//   }
//   return state;
// }
