import 'package:flutter/material.dart';
import 'package:alphabarber22/models/haircut.dart';
import 'package:alphabarber22/widgets/date_selector.dart';
import 'package:alphabarber22/widgets/time_selector.dart';

class BookingScreen extends StatelessWidget {
  final Haircut haircut;

  const BookingScreen({
    super.key,
    required this.haircut,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendar horário'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: Text(haircut.name),
            subtitle: Text('R\$ ${haircut.price.toStringAsFixed(2)}'),
          ),
          const SizedBox(height: 16),
          DateSelector(), // 🚫 sem const
          const SizedBox(height: 16),
          TimeSelector(), // 🚫 sem const
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Confirmar agendamento'),
          ),
        ],
      ),
    );
  }
}

