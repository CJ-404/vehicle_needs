import 'package:flutter/material.dart';

class RegistrationPart1 extends StatefulWidget {
  const RegistrationPart1({super.key});

  @override
  State<RegistrationPart1> createState() => _RegistrationPart1State();
}

class _RegistrationPart1State extends State<RegistrationPart1> {
  final _formKey = GlobalKey<FormState>();
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...[
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              hintText: 'Enter the name of Manufacturere of the vehicle',
              labelText: 'Manufacturer',
            ),
            onChanged: (value) {
              setState(() {
                title = value;
              });
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              hintText:
                  'Eter the model of the vehicle, e.g. Corolla, Camry, etc.',
              labelText: 'Model',
            ),
            onChanged: (value) {
              setState(() {
                title = value;
              });
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              hintText: 'Year of manufacture',
              labelText: 'Year',
            ),
            onChanged: (value) {
              setState(() {
                title = value;
              });
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              hintText: 'Vrhicle Identification Number',
              labelText: 'VIN',
            ),
            onChanged: (value) {
              setState(() {
                title = value;
              });
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              hintText: 'Fuel Type',
              labelText: 'Fuel Type',
            ),
            onChanged: (value) {
              setState(() {
                title = value;
              });
            },
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
