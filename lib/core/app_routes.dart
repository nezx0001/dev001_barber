import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/booking/booking_screen.dart';
import '../models/haircut.dart';

class AppRoutes {
  static const home = '/';
  static const booking = '/booking';

  static Map<String, WidgetBuilder> get routes => {
        home: (_) => const HomeScreen(),
        booking: (context) {
          final haircut =
              ModalRoute.of(context)!.settings.arguments as Haircut;
          return BookingScreen(haircut: haircut);
        },
      };
}

