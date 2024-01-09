import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamPlay({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBState());
    }
  }
}
