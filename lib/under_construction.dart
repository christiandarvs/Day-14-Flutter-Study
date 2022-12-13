import 'package:flutter/material.dart';

class UnderConstruction extends StatefulWidget {
  const UnderConstruction({super.key});

  @override
  State<UnderConstruction> createState() => _UnderConstructionState();
}

class _UnderConstructionState extends State<UnderConstruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coming Soon'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Image.asset('images/error404.png'),
      )),
    );
  }
}
