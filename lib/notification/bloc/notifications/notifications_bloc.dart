import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(NotificationsInitial());

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    if (event is FetchNotifications) {
      yield NotificationsFetchInProgress();
      var notificationsList;
      try {
        final fakeBool = await _getFutureBool();
      } on Exception {
        yield NotificationsFetchFailure('FAIL');
        return;
      }
      if (notificationsList == null) {
        yield NotificationsFetchFailure('EMPTY OBJECT');
        return;
      }
      yield NotificationsFetchSuccess();
    }
  }

  Future<bool> _getFutureBool() {
    return Future.delayed(Duration(milliseconds: 100)).then((onValue) => true);
  }
}
