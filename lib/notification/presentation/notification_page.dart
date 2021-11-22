import 'package:bell_security_app/notification/presentation/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import '../bloc/notifications/notifications_bloc.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
          actions: [
            BlocBuilder<NotificationsBloc, NotificationsState>(
              builder: (context, state) {
                if (state is NotificationsFetchSuccess) {
                  return IconButton(
                      icon: Icon(Icons.delete_outline_outlined),
                      onPressed: () {
                        _showDeleteNotificationsDialog(context);
                      });
                }
                return SizedBox.shrink();
              },
            ),
          ],
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          iconTheme: Theme.of(context).iconTheme,
          // bottom: TabBar(
          //   tabs: [
          //     Tab(icon: Icon(Icons.message_outlined)),
          //     Tab(icon: Icon(Icons.watch_later_outlined)),
          //   ],
          // ),
          title: Text('Notifications', style: TextStyle(color: Colors.black87)),
        ),
        body: BlocBuilder<NotificationsBloc, NotificationsState>(
          builder: (context, state) {
            if (state is NotificationsFetchInProgress) {
              return Center(
                child: CircularProgressIndicator(
                    backgroundColor: Theme.of(context).accentColor),
              );
            } else if (state is NotificationsFetchSuccess) {
              return _buildNotificationsList([]);
            } else if (state is NotificationsFetchFailure) {
              return Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Text('Oops! Sorry but something went wrong'),
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  _buildNotificationsList(List notificationsList) {
    return notificationsList.isEmpty
        ? Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_none,
                      size: 80, color: Colors.black45),
                  const SizedBox(height: 24.0),
                  Text('You have no notifications right now.',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center),
                  const SizedBox(height: 8.0),
                  Text(
                      'When you have job updates, messages or news, it will be showed here.',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          )
        : SingleChildScrollView(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: notificationsList.length,
              itemBuilder: (context, index) {
                return NotificationCard();
              },
            ),
          );
  }

  _showDeleteNotificationsDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      width: 350,
      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,
      animType: AnimType.BOTTOMSLIDE,
      dialogType: DialogType.NO_HEADER,
      title: 'Delete Notifications',
      desc:
          'Are you sure you want to delete all notifications? You can choose to delete each one by longpressing an entry.',
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      btnCancelText: 'Go back',
      btnCancelColor: Colors.black,
      btnOkText: 'Delete',
      btnOkColor: Colors.red,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    )..show();
  }
}
