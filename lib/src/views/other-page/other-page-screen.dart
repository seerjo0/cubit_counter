import 'package:flutter/material.dart';

class OtherPageScreen extends StatefulWidget {
  const OtherPageScreen({super.key});

  @override
  State<OtherPageScreen> createState() => _OtherPageScreenState();
}

class _OtherPageScreenState extends State<OtherPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Other Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Other',
            style: TextStyle(
              fontSize: 50,
              color: Colors.indigo.shade900,
            ),
          ),
        ),
      ),
    );
  }
}
