import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:real_state_mangament/views/search/Search.dart';
import '../Home/Account.dart/Account.dart';

class Setting_page extends StatefulWidget {
  static var routeName;

  const Setting_page({Key? key}) : super(key: key);

  @override
  State<Setting_page> createState() => _Setting_pageState();
}

class _Setting_pageState extends State<Setting_page> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.purple,
        body: buldCoverimg(),
      );
  Widget buldCoverimg() => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(24),
            children: [
              SettingsGroup(title: "Setting", children: [
                //Logout and
                SizedBox(
                  height: 30,
                ),
                Account(),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: SimpleSettingsTile(
                    title: "Logout",
                    subtitle: '',
                    leading: Icon(Icons.logout, color: Colors.blue),
                    onTap: () => (context),
                  ),
                ),
                //Delete Acount
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: SimpleSettingsTile(
                    title: "Delete Acount",
                    subtitle: '',
                    leading: Icon(Icons.delete_forever, color: Colors.red),
                    onTap: () => (context),
                  ),
                ),
              ])
            ],
          ),
        ),
      );
}
