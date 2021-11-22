import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        leading: Icon(Icons.work_outline_rounded, size: 30.0),
        trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
        title: _getNotificationTitle(context, true),
        onTap: () {},
      ),
    );
  }

  Widget _getNotificationTitle(BuildContext context, bool isApplication) {
    if (isApplication) {
      return RichText(
        text: TextSpan(
          text: 'Job Application: ',
          style: TextStyle(fontSize: 16.0, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
                text: 'Ring0123 ',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'is ready for an update '),
            TextSpan(
                text: 'bla bla bla ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(text: 'post!'),
          ],
        ),
      );
    } else {
      return RichText(
        text: TextSpan(
          text: 'Confirmation: ',
          style: TextStyle(fontSize: 16.0, color: Colors.black87),
          children: <TextSpan>[
            TextSpan(text: 'You have been accepted for the '),
            TextSpan(
                text: 'True ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(text: 'position!'),
          ],
        ),
      );
    }
  }
}
