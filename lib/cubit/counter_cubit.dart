import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_project/cubit/counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterAIncrementState());
  int teamApoints = 0;

  int teamBpoints = 0;
 int incrementTeamBpoints(int numberofbutton, String teamName) {
    if (teamName == 'A') {
      emit(CounterAIncrementState());
      return teamApoints += numberofbutton;
    } else {
      emit(CounterBIncrementState());
      return teamBpoints += numberofbutton;
    }
  }
}
