part of 'notifications_bloc.dart';

abstract class NotificationsState extends Equatable {
  const NotificationsState();
}

class NotificationsInitial extends NotificationsState {
  @override
  List<Object> get props => [];
}

class NotificationsFetchInProgress extends NotificationsState {
  NotificationsFetchInProgress();
  @override
  List<Object> get props => [];
}

class NotificationsFetchSuccess extends NotificationsState {
  NotificationsFetchSuccess();
  @override
  List<Object> get props => [];
}

class NotificationsFetchFailure extends NotificationsState {
  final String message;
  NotificationsFetchFailure(this.message);
  @override
  List<Object> get props => [message];
}
