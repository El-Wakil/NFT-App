import 'package:flutter/material.dart';
import 'package:nti/shared/styles/styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search Screen',
        style: titleStyle,
      ),
    );
  }
}
