import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../models/haircut.dart';

class HaircutCard extends StatelessWidget {
  final Haircut haircut;
  final VoidCallback onTap;

  const HaircutCard({
    super.key,
    required this.haircut,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(haircut.title),
        subtitle: Text(haircut.description),
        trailing: Text('R\$ ${haircut.price}'),
        onTap: onTap,
      ),
    );
  }
Text(
  'R\$ 40,00',
  style: const TextStyle(
    color: AppColors.secondary,
    fontWeight: FontWeight.bold,
  ),
);

}


