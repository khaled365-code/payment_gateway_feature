import 'package:flutter/material.dart';
import 'package:payment_project/features/checkout/presentation/views/chechkout_screen.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: CheckoutScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
