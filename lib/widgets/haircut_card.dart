import 'package:flutter/material.dart';
import '../models/haircut.dart';
import '../screens/booking/booking_screen.dart';

class HaircutCard extends StatelessWidget {
  final Haircut haircut;

  const HaircutCard({
    Key? key,
    required this.haircut,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2A2A2A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ListTile(
        title: Text(
          haircut.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          haircut.description,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Text(
          'R\$ ${haircut.price.toStringAsFixed(2)}',
          style: const TextStyle(
            color: Color(0xFFC9A24D),
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BookingScreen(haircut: haircut),
            ),
          );
        },
      ),
    );
  }
}


