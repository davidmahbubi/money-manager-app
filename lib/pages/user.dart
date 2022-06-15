import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:money_manager_app/data/user_data.dart';
import 'package:money_manager_app/services/auth_services.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            left: primaryHorizontalMargin,
            right: primaryHorizontalMargin,
            top: 50,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/default_profile.png', width: 150),
                const SizedBox(height: 25),
                Text(
                  UserData.activeUser?.displayName ?? '-',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 23),
                ),
                const SizedBox(height: 8),
                Text(UserData.activeUser?.email ?? '-'),
                const SizedBox(height: 50),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                      onPressed: () {
                        AuthServices.signOut();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: const <Widget>[
                            FaIcon(FontAwesomeIcons.powerOff),
                            SizedBox(width: 13),
                            Text('Sign Out')
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
