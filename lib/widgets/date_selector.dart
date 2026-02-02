import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget {
  final DateTime? selectedDate;
  final Function(DateTime) onDateSelected;

  const DateSelector({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 30)),
        );

        if (pickedDate != null) {
          onDateSelected(pickedDate);
        }
      },
      child: Text(
        selectedDate == null
            ? 'Selecionar data'
            : 'Data: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
      ),
    );
  }
}
