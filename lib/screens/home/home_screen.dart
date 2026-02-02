import 'package:flutter/material.dart';
import '../../models/haircut.dart';
import '../../widgets/haircut_card.dart';
import '../../core/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final haircuts = [
      Haircut(
        title: 'Corte Clássico',
        description: 'Tradicional e elegante',
        price: 40,
      ),
      Haircut(
        title: 'Degradê',
        description: 'Moderno e estiloso',
        price: 45,
      ),
      Haircut(
        title: 'Barba',
        description: 'Barba completa',
        price: 30,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('AlphaBarber22')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: haircuts.length,
        itemBuilder: (context, index) {
          return HaircutCard(
            haircut: haircuts[index],
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.booking,
                arguments: haircuts[index],
              );
            },
          );
        },
      ),
    );
  }
}

