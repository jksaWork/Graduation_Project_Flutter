import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);
  static const keylanguage = "keylanguage";

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: "Account",
        subtitle: "Privicy,Security,Languge",
        leading: Icon(Icons.account_balance, color: Colors.blue),
        child: SettingsScreen(
          title: "Account Setting",
          children: <Widget>[
            Privicy(context),
            Security(context),
            Languge(context),
          ],
        ),
      );
  Widget Privicy(BuildContext context) => Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: SimpleSettingsTile(
          title: "Privicy",
          subtitle: '',
          leading: Icon(
            Icons.privacy_tip,
            color: Colors.red,
          ),
          onTap: () => (context),
        ),
      );
  Widget Security(BuildContext context) => Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: SimpleSettingsTile(
          title: "Security",
          subtitle: '',
          leading: Icon(
            Icons.security,
            color: Colors.yellow,
          ),
          onTap: () => (context),
        ),
      );
  Widget Languge(BuildContext context) => Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: DropDownSettingsTile(
            selected: 1,
            title: "Languge",
            settingKey: keylanguage,
            values: <int, String>{
              1: "English",
              2: "Arabic",
            }),
        // child: SimpleSettingsTile(
        //   title: "Languge",
        //   subtitle: '',
        //   leading: Icon(
        //     Icons.language,
        //     color: Colors.blue,
        //   ),
        //   onTap: () => (context),
        // ),
      );
}
