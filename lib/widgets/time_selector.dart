import 'package:flutter/material.dart';

class TimeSelector extends StatefulWidget {
  final Function(String) onTimeSelected;

  const TimeSelector({super.key, required this.onTimeSelected});

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  String? selectedTime;

  final List<String> times = [
    '09:00',
    '10:00',
    '11:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: times.map((time) {
        final isSelected = selectedTime == time;

        return ChoiceChip(
          label: Text(time),
          selected: isSelected,
          selectedColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
          onSelected: (_) {
            setState(() {
              selectedTime = time;
            });
            widget.onTimeSelected(time);
          },
        );
      }).toList(),
    );
  }
}


