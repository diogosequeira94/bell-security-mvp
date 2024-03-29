part of 'bottom_navigation_bar_bloc.dart';

abstract class BottomNavigationBarEvent extends Equatable {
  const BottomNavigationBarEvent();
}

class BottomNavigationHomePagePressed extends BottomNavigationBarEvent {
  @override
  List<Object> get props => [];
}

class BottomNavigationProfilePagePressed extends BottomNavigationBarEvent {
  @override
  List<Object> get props => [];
}

class BottomNavigationMapPagePressed extends BottomNavigationBarEvent {
  @override
  List<Object> get props => [];
}

class BottomNavigationSettingsPagePressed extends BottomNavigationBarEvent {
  @override
  List<Object> get props => [];
}
