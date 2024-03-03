import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class RegistrationPart2 extends StatefulWidget {
  const RegistrationPart2({super.key});

  @override
  State<RegistrationPart2> createState() => _RegistrationPart2State();
}

class _RegistrationPart2State extends State<RegistrationPart2> {
  final _formKey = GlobalKey<FormState>();
  double fuelCapacity = 1;
  double currentOdometerReading = 0;
  double fuelEconomy = 1;
  double recommendedMaintenanceInterval = 1;
  double tireWidth = 50;
  double wheelDiameter = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fuel Capacity',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Text(
              '${intl.NumberFormat.decimalPattern().format(fuelCapacity)} liters',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Slider(
              min: 1,
              max: 500,
              divisions: 499 * 2,
              value: fuelCapacity,
              onChanged: (value) {
                setState(() {
                  fuelCapacity = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Current Odometer Reading',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            Text(
              '${intl.NumberFormat.decimalPattern().format(currentOdometerReading)} km',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Slider(
              min: 0,
              max: 50000000,
              divisions: 50000000 * 10,
              value: currentOdometerReading,
              onChanged: (value) {
                setState(() {
                  currentOdometerReading = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fuel Economy',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Text(
              '${intl.NumberFormat.decimalPattern().format(fuelEconomy)} km/liter',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Slider(
              min: 1,
              max: 150,
              divisions: 149 * 10,
              value: fuelEconomy,
              onChanged: (value) {
                setState(() {
                  fuelEconomy = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Recommended maintenance interval',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            Text(
              '${intl.NumberFormat.decimalPattern().format(recommendedMaintenanceInterval)} month(s)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Slider(
              min: 1,
              max: 12,
              divisions: 11,
              value: recommendedMaintenanceInterval,
              onChanged: (value) {
                setState(() {
                  recommendedMaintenanceInterval = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tire Width',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Text(
              '${intl.NumberFormat.decimalPattern().format(tireWidth)} milimeters',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Slider(
              min: 50,
              max: 500,
              divisions: 450 * 2,
              value: tireWidth,
              onChanged: (value) {
                setState(() {
                  tireWidth = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Weel Diameter',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Text(
              '${intl.NumberFormat.decimalPattern().format(wheelDiameter)} inche(s)',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Slider(
              min: 1,
              max: 50,
              divisions: 49 * 2,
              value: wheelDiameter,
              onChanged: (value) {
                setState(() {
                  wheelDiameter = value;
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
        ]);
  }
}
