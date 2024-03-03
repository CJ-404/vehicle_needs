import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicle_needs/Register_Forms/part1.dart';
import 'package:vehicle_needs/Register_Forms/part2.dart';
import 'package:vehicle_needs/Register_Forms/part3.dart';
import 'package:vehicle_needs/Register_Forms/part4.dart';

class RegisterForm extends StatefulWidget {
  final ThemeData themeData;

  const RegisterForm({super.key, required this.themeData});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  DateTime date = DateTime.now();
  double maxValue = 50;
  bool? brushedTeeth = false;
  bool enableFeature = false;
  final scrollController = ScrollController();
  int _currentStep = 0;
  List<Step> _steps = [];

  @override
  Widget build(BuildContext context) {
    _steps = [
      Step(
        title: Text('Step 1: General Info'),
        content: RegistrationPart1(),
        isActive: _currentStep >= 0,
        state: _currentStep > 0 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: Text('Step 2: Vehicle Info'),
        content: RegistrationPart2(),
        isActive: _currentStep >= 1,
        state: _currentStep > 1 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: Text('Step 3: Vehicle Inspection'),
        content: RegistrationPart3(),
        isActive: _currentStep >= 2,
        state: _currentStep > 2 ? StepState.complete : StepState.indexed,
      ),
      Step(
        title: Text('Step 4: Other Information (optional)'),
        content: RegistrationPart4(themeData: widget.themeData),
        isActive: _currentStep >= 3,
        state: _currentStep > 3 ? StepState.complete : StepState.indexed,
      ),
    ];
    return Scaffold(
      body: Center(
        child: Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary: widget.themeData.colorScheme.primary,
              surface: widget.themeData.colorScheme.primary,
              onSurface: widget.themeData.colorScheme.onPrimary,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Registration', style: TextStyle(fontSize: 24)),
              ),
              Expanded(
                child: Stepper(
                  // type: StepperType.horizontal,
                  steps: _steps,
                  currentStep: _currentStep,
                  onStepCancel: () {
                    if (_currentStep > 0) {
                      setState(() {
                        _currentStep -= 1;
                      });
                    }
                  },
                  onStepContinue: () {
                    if (_currentStep < _steps.length - 1) {
                      setState(() {
                        _currentStep += 1;
                      });
                    }
                  },
                  onStepTapped: (int index) {
                    setState(() {
                      _currentStep = index;
                    });
                  },
                  controlsBuilder:
                      (BuildContext context, ControlsDetails controls) {
                    return Row(
                      children: [
                        if (_currentStep < _steps.length - 1)
                          ElevatedButton(
                            child: Text(
                              'Next',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              controls.onStepContinue!();
                            },
                          ),
                        if (_currentStep == _steps.length - 1)
                          ElevatedButton(
                            child: Text('Register',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                )),
                            onPressed: () {
                              controls.onStepContinue!();
                            },
                          ),
                        if (_currentStep > 0)
                          TextButton(
                            onPressed: controls.onStepCancel,
                            child: Text('Back',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
