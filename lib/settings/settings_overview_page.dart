import 'package:bell_security_app/bell_primary_button.dart';
import 'package:bell_security_app/profile/profile_page.dart';
import 'package:bell_security_app/settings/widgets/horizontal_divider_widget.dart';
import 'package:bell_security_app/settings/widgets/section_header_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/faq_section.dart';
import 'widgets/legal_policies.dart';
import 'widgets/notification_settings.dart';

class AccountOverviewPage extends StatefulWidget {
  @override
  _AccountOverviewPageState createState() => _AccountOverviewPageState();
}

class _AccountOverviewPageState extends State<AccountOverviewPage> {
  // bool isDarkModeSelected = sharedPrefs.isDarkModeSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: Theme.of(context).iconTheme,
        title: Text(
          'My Account',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                Navigator.of(context).pushNamed('/notifications');
              }),
          IconButton(
              icon: Icon(Icons.chat_outlined),
              onPressed: () {
                Navigator.of(context).pushNamed('/messages');
              }),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.0,
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 2.0),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    title: Text(
                      'Diogo Sequeira',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        'assets/facebook.jpg',
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(Icons.account_balance_outlined),
                      title: Text('My Wallet'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {}),
                  HorizontalDivider(),
                  ListTile(
                    leading: Icon(Icons.lock_outline),
                    title: Text('Change Password'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () =>
                        Navigator.of(context).pushNamed('/change-password'),
                  ),
                  HorizontalDivider(),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Change Language'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () => print('Language change pressed'),
                    onLongPress: () =>
                        Navigator.of(context).pushNamed('/onboarding'),
                  ),
                ],
              ),
            ),
            NotificationSettings(),
            SectionHeader(title: 'Themes'),
            SwitchListTile(
              activeColor: Theme.of(context).accentColor,
              contentPadding: const EdgeInsets.all(0),
              value: true,
              title: Text('Dark Mode'),
              onChanged: (bool value) {},
            ),
            SectionHeader(title: 'Premium'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Currently you have no active plans.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            FaqSection(),
            LegalPoliciesSection(),
            SizedBox(height: 24.0),
            RyzePrimaryButton(
              title: 'Sign Out',
              action: () {},
              isAffirmative: true,
            ),
          ],
        ),
      ),
    );
  }
}
