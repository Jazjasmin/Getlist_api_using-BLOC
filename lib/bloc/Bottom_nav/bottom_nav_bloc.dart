import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavState()) {
    on<TriggerBottomNavEvent>((event, emit) {
      print("my tapped index is ${event.index}");
      emit(BottomNavState(index: event.index));
    });
  }
}
