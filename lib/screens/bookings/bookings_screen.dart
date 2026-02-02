import 'package:flutter/material.dart';
import '../../models/booking.dart';

class BookingsScreen extends StatelessWidget {
  final List<Booking> bookings;

  const BookingsScreen({
    super.key,
    required this.bookings,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Agendamentos'),
      ),
      body: bookings.isEmpty
          ? const Center(
              child: Text(
                'Nenhum agendamento encontrado',
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: bookings.length,
              itemBuilder: (context, index) {
                final booking = bookings[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    title: Text(booking.haircut.title),
                    subtitle: Text(
                      '${booking.date.day}/${booking.date.month}/${booking.date.year}',
                    ),
                    trailing: const Icon(Icons.calendar_today),
                  ),
                );
              },
            ),
    );
  }
}
