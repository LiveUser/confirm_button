import 'package:confirm_button/confirm_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          RadialConfirm(
            radius: 50,
            secondsToConfirm: 10,
            strokeWidth: 5,
            valueColor: Colors.green,
            backgroundColor: Colors.black,
            onConfirmed: (){
              print("Confirmed");
            },
            child: const Icon(
              Icons.check,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}