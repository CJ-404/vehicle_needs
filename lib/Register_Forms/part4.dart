import 'package:flutter/material.dart';

class RegistrationPart4 extends StatefulWidget {
  final ThemeData themeData;

  const RegistrationPart4({Key? key, required this.themeData})
      : super(key: key);

  @override
  State<RegistrationPart4> createState() => _RegistrationPart4State();
}

class _RegistrationPart4State extends State<RegistrationPart4> {
  final _formKey = GlobalKey<FormState>();
  String engineSpecifications = '';
  String otherInformation = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...[
          Text(
            'Note: Including these additional information may increase quality of personalized Tips and Recommendations!',
            style: widget.themeData.textTheme.bodyLarge!.copyWith(
              color: widget.themeData.colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              hintText:
                  'Engine Specifications: displacement, # of cylinders, etc.',
              labelText: 'Engine Specifications',
            ),
            onChanged: (value) {
              engineSpecifications = value;
            },
            maxLines: 5,
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              hintText: 'Enter any other information about the vehicle',
              labelText: 'Other Information',
            ),
            onChanged: (value) {
              otherInformation = value;
            },
            maxLines: 5,
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
