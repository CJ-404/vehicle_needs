import 'package:flutter/material.dart';

class VehiclesPage extends StatelessWidget {
  final ThemeData themeData;

  const VehiclesPage({Key? key, required this.themeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text('All the Registered vehicles will be shown here'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: themeData.colorScheme.surface,
        foregroundColor: themeData.colorScheme.onSurface,
        onPressed: null,
        tooltip: 'Register a new vehicle',
        child: const Icon(Icons.add),
      ),
    );
  }
}
