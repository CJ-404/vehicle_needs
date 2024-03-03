import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF6895D2),
          secondary: Color(0xFFFDE767),
          surface: Color(0xFFF3B95F),
          background: Color(0xFFFFFFFF),
          error: Color(0xFFD04848), //(0xFFB00020),
          onPrimary: Color(0xFF000000),
          onSecondary: Color(0xFF000000),
          onSurface: Color(0xFF000000),
          onBackground: Color(0xFF000000),
          onError: Color(0xFFFFFFFF),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const MainRouter(title: 'Vehicle Needs'),
    );
  }
}

class MainRouter extends StatefulWidget {
  const MainRouter({super.key, required this.title});

  final String title;

  @override
  State<MainRouter> createState() => _MainRouterState();
}

class _MainRouterState extends State<MainRouter> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: theme.colorScheme.onPrimary,
              tabs: <Widget>[
                Tab(
                    icon: Icon(
                  Icons.home_filled,
                  semanticLabel: 'Home',
                  size: 28,
                )),
                Tab(
                  icon: Icon(
                    Icons.directions_car_filled,
                    semanticLabel: 'Registered Vehicles',
                    size: 28,
                  ),
                ),
              ],
            ),
            backgroundColor: theme.colorScheme.surface,
            foregroundColor: theme.colorScheme.onSurface,
            title: Center(child: Text(widget.title)),
          ),
          body: TabBarView(
            children: [
              Scaffold(
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
              ),
              Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Center(
                        child: Text(
                            'All the Registered vehicles will be shown here'),
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  backgroundColor: theme.colorScheme.surface,
                  foregroundColor: theme.colorScheme.onSurface,
                  onPressed: null,
                  tooltip: 'Register a new vehicle',
                  child: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
