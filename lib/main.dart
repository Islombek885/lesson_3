// ! Assalomu aleykum ustoz!
// ! Ustoz vazifani ikkalasi ham shu file ichiga joylangan
// ! rasmlari ham bor
// ! masala_1rasm.png 1-masalani rasmi
// !masala_2rasm.png 2-masala rasmi

// 1- masala







// flutter clean
// flutter pug geta

import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF1A1A2E),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
          child: Column(
            children: [
              CreditCard(
                bankName: "SMART KART",
                cardType: "HUMO",
                cardNumber: "5322 2596 2153 2368",
                expiryDate: "01/25",
                holderName: "Islombek Iskandarov",
                cardColor: const Color(0xFFB22222),
                textColor: Colors.white,
                hasContactless: true,
              ),
              const SizedBox(height: 30),
              CreditCard(
                bankName: "XALQ BANKI",
                cardType: "VISA",
                cardNumber: "5322 2596 2153 2368",
                expiryDate: "01/25",
                holderName: "Islombek Iskandarov",
                cardColor: const Color(0xFF6A0DAD),
                textColor: Colors.white,
                hasContactless: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  final String bankName;
  final String cardType;
  final String cardNumber;
  final String expiryDate;
  final String holderName;
  final Color cardColor;
  final Color textColor;
  final bool hasContactless;

  const CreditCard({
    super.key,
    required this.bankName,
    required this.cardType,
    required this.cardNumber,
    required this.expiryDate,
    required this.holderName,
    required this.cardColor,
    required this.textColor,
    this.hasContactless = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardType,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Text(
                  bankName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/chip.png",
                  width: 50,
                  height: 40,
                ),
                if (hasContactless)
                  Transform.rotate(
                    angle: math.pi / 2,
                    child: Icon(
                      Icons.wifi,
                      size: 30,
                      color: textColor,
                    ),
                  ),
              ],
            ),
            const Spacer(),
            Text(
              cardNumber,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  holderName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Text(
                  expiryDate,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}