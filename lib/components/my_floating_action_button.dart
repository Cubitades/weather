import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const MyFloatingActionButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onPressed();
      },
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      foregroundColor: Theme.of(context).colorScheme.background,
      child: Icon(icon),
    );
  }
}
