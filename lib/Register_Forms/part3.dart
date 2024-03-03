import 'package:flutter/material.dart';

class RegistrationPart3 extends StatefulWidget {
  const RegistrationPart3({super.key});

  @override
  State<RegistrationPart3> createState() => _RegistrationPart3State();
}

class _RegistrationPart3State extends State<RegistrationPart3> {
  final _formKey = GlobalKey<FormState>();
  bool frontRightSignal = false;
  bool frontLeftSignal = false;
  bool rearRightSignal = false;
  bool rearLeftSignal = false;
  bool horn = false;
  bool headlights = false;
  bool brakeLights = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Front: Right Side Signal lights (working or not)',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Switch(
                value: frontRightSignal,
                onChanged: (enabled) {
                  setState(() {
                    frontRightSignal = enabled;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Front: Left Side Signal lights (working or not)',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Switch(
                value: frontLeftSignal,
                onChanged: (enabled) {
                  setState(() {
                    frontLeftSignal = enabled;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Rear: Right Side Signal lights (working or not)',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Switch(
                value: rearRightSignal,
                onChanged: (enabled) {
                  setState(() {
                    rearRightSignal = enabled;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Rear: Left Side Signal lights (working or not)',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Switch(
                value: rearLeftSignal,
                onChanged: (enabled) {
                  setState(() {
                    rearLeftSignal = enabled;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Horn (working or not)',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Switch(
                value: horn,
                onChanged: (enabled) {
                  setState(() {
                    horn = enabled;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Headlights (working or not)',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Switch(
                value: headlights,
                onChanged: (enabled) {
                  setState(() {
                    headlights = enabled;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text('Brake lights (working or not)',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Switch(
                value: brakeLights,
                onChanged: (enabled) {
                  setState(() {
                    brakeLights = enabled;
                  });
                },
              ),
            ],
          ),
        ].expand(
          (widget) => [
            widget,
            const SizedBox(
              height: 24,
            )
          ],
        )
      ],
    );
  }
}
