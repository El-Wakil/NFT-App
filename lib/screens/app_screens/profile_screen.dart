import 'package:flutter/material.dart';
import 'package:nti/shared/styles/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Text('Profile Screen',
    style: titleStyle,
    ),
    );
  }
}
