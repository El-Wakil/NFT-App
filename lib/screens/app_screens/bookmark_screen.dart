import 'package:flutter/material.dart';
import 'package:nti/shared/styles/styles.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Bookmark Screen',
        style: titleStyle,
      ),
    );
  }
}
