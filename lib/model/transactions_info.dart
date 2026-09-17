import 'package:flutter/material.dart';
class Transactions {
  final IconData leading;
  final String title;
  final String subtitle;
  final String trailing;

  Transactions({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });
}

final List<Transactions> dummyTransactions = [
  Transactions(
    leading: Icons.apple,
    title: 'Apple Store',
    subtitle: 'Transactions',
    trailing : '-\$5.99'),
  Transactions(
      leading: Icons.wifi_2_bar_rounded,
      title: 'Spotify',
      subtitle: 'Music',
      trailing : '-\$12.99'),
  Transactions(
      leading: Icons.arrow_downward,
      title: 'Money Transfer',
      subtitle: 'Transaction',
      trailing : '+\$300'),
  Transactions(
      leading: Icons.card_travel,
      title: 'Grocery',
      subtitle: 'Shopping',
      trailing : '-\$9.99'),
  Transactions(
      leading: Icons.safety_check,
      title: 'Safety',
      subtitle: 'Precautions',
      trailing : '-\$2.7'),
  Transactions(
      leading: Icons.snowshoeing_sharp,
      title: 'Shoe Store',
      subtitle: 'Transactions',
      trailing : '-\$5.99'),
  Transactions(
      leading: Icons.bolt,
      title: 'Electricity Bill',
      subtitle: 'Utility',
      trailing : '-\$6.99'),
  Transactions(
    leading: Icons.attach_money,
    title: 'Salary',
    subtitle: 'Income',
    trailing: '+\$2,500.00',
  ),
];