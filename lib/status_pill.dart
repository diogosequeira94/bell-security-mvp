import 'package:flutter/material.dart';

class StatusPill extends StatelessWidget {
  final String status;

  const StatusPill({required this.status});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Material(
        key: Key('jobStatusPill_material'),
        color: _getPillColor(status),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: 22.0,
          width: 75.0,
          child: Center(
              child:
                  Text(status, maxLines: 1, style: TextStyle(fontSize: 13.5))),
        ),
      ),
    );
  }

  Color _getPillColor(String jobStatus) {
    switch (jobStatus) {
      case 'Active':
        return Colors.lightGreen;
      case 'Inactive':
        return Colors.orangeAccent;
      case 'Live':
        return Colors.blueAccent;
      case 'Done':
        return Color(0xFFDD0000);
      default:
        return Colors.transparent;
    }
  }
}
