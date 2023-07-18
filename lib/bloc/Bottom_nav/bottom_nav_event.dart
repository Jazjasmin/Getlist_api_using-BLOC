part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent {
  const BottomNavEvent();
}

class TriggerBottomNavEvent extends BottomNavEvent {
  final int index;

  const TriggerBottomNavEvent(this.index) : super();
}
