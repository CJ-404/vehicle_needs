import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final ThemeData themeData;

  const HomePage({Key? key, required this.themeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Homepage',
            ),
          ],
        ),
      ),
    );
  }
}
