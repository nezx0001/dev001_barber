import 'package:flutter/material.dart';
import '../../models/haircut.dart';
import '../../widgets/haircut_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Haircut> haircuts = [
  Haircut(
    title: 'Corte Clássico',
    description: 'Tesoura e máquina',
    price: 40.0,
  ),
  Haircut(
    title: 'Corte Fade',
    description: 'Degradê moderno',
    price: 45.0,
  ),
  Haircut(
    title: 'Barba',
    description: 'Navalha e acabamento',
    price: 30.0,
  ),
  Haircut(
    title: 'Corte + Barba',
    description: 'Pacote completo',
    price: 65.0,
  ),
];

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('alphaBarber22'),
      ),
      body: ListView.builder(
        itemCount: haircuts.length,
        itemBuilder: (context, index) {
          return HaircutCard(haircut: haircuts[index]);
        },
      ),
    );
  }
}


