import 'package:flutter/material.dart';

class TextAppBarCustom extends StatelessWidget {
  const TextAppBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(children: [
      TextSpan(text: 'Cred', style: TextStyle(color: Colors.red)),
      TextSpan(text: 'Moto, Olá ', style: TextStyle(color: Colors.black)),
      TextSpan(text: 'Arthur', style: TextStyle(color: Colors.red)),
      TextSpan(text: '!', style: TextStyle(color: Colors.black)),
    ]));
  }
}
