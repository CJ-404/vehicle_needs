import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final ThemeData themeData;

  const HomePage({Key? key, required this.themeData}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                ),
                margin: const EdgeInsets.all(10.0),
                color: widget.themeData.colorScheme.secondary,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Subscribe to Vehicle Tips?',
                              style: widget.themeData.textTheme.headlineMedium!
                                  .copyWith(
                                color: widget.themeData.colorScheme.onSecondary,
                              ),
                            ),
                            Text(
                              'By subscribing to vehicle tips you are agreeing to these terms & conditions which comes with using an AI model.',
                              style: widget.themeData.textTheme.bodyLarge!
                                  .copyWith(
                                color: widget.themeData.colorScheme.onSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Switch(
                        activeColor: widget.themeData.colorScheme.primary,
                        value: _isToggled,
                        onChanged: (newValue) {
                          setState(() {
                            _isToggled = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _isToggled = !_isToggled;
                  });
                },
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  color: widget.themeData.colorScheme.primary,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: Text(
                            'Register a Vehicle',
                            style: widget.themeData.textTheme.headlineMedium!
                                .copyWith(
                              color: widget.themeData.colorScheme.onSecondary,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: Text(
                            'Have a new vehicle?',
                            style: widget.themeData.textTheme.headlineSmall!
                                .copyWith(
                              color: widget.themeData.colorScheme.onSecondary,
                            ),
                          ),
                        ),
                        Text(
                          'By subscribing to vehicle tips you are agreeing to these terms & conditions which comes with using an AI model.',
                          style: widget.themeData.textTheme.bodyLarge!.copyWith(
                            color: widget.themeData.colorScheme.onSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                  ),
                  margin: const EdgeInsets.all(10.0),
                  color: _isToggled
                      ? widget.themeData.colorScheme.secondary
                      : widget.themeData.colorScheme.background,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                      child: _isToggled
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Vehicle Tips',
                                        style: widget
                                            .themeData.textTheme.headlineMedium!
                                            .copyWith(
                                          color: widget.themeData.colorScheme
                                              .onSecondary,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_purple500,
                                        semanticLabel: 'Vehicle Tips',
                                        size: 28,
                                        color: widget
                                            .themeData.colorScheme.onSecondary,
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Account of the system, and expound the actual teachings.',
                                      style: widget
                                          .themeData.textTheme.bodyLarge!
                                          .copyWith(
                                        color: widget
                                            .themeData.colorScheme.onSecondary,
                                      ),
                                    ),
                                    Text(
                                      'The master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself.',
                                      style: widget
                                          .themeData.textTheme.bodyLarge!
                                          .copyWith(
                                        color: widget
                                            .themeData.colorScheme.onSecondary,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Text(
                                    'Vehicle Tips',
                                    style: widget
                                        .themeData.textTheme.headlineMedium!
                                        .copyWith(
                                      color: widget
                                          .themeData.colorScheme.onSecondary,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Subscribe to vehicle tips to get AI generated personalized updates on your vehicle!',
                                  style: widget.themeData.textTheme.bodyLarge!
                                      .copyWith(
                                    color: widget.themeData.colorScheme.error,
                                  ),
                                ),
                              ],
                            )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
