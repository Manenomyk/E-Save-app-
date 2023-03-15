import 'package:flutter/material.dart';

class Deopsit extends StatefulWidget {
  const Deopsit({super.key});

  @override
  State<Deopsit> createState() => _DeopsitState();
}

class _DeopsitState extends State<Deopsit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Deposit page',
        ),
      ),
    );
  }
}
