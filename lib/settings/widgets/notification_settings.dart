import 'package:bell_security_app/settings/widgets/section_header_widget.dart';
import 'package:flutter/material.dart';

class NotificationSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: 'Notification Settings'),
        SwitchListTile(
          activeColor: Theme.of(context).accentColor,
          contentPadding: const EdgeInsets.all(0),
          value: true,
          title: Text('Receive Invites Notification'),
          onChanged: (isChecked) {},
        ),
        SwitchListTile(
          activeColor: Theme.of(context).accentColor,
          contentPadding: const EdgeInsets.all(0),
          value: false,
          title: Text('Receive Responses Notification'),
          onChanged: (isChecked) {},
        ),
      ],
    );
  }
}
