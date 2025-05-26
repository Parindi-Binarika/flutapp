import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color iconColor = const Color.fromARGB(255, 91, 56, 85);
  int ledState = 0;
  Text btn = Text("OFF");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("IOT   APP 08"),
          backgroundColor: const Color.fromARGB(255, 132, 195, 165),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text("LED ON//OFF"),
              SizedBox(height: 40),
              Icon(Icons.lightbulb, color: iconColor),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (ledState == 0) {
                      ledState = 1;
                      iconColor = const Color.fromARGB(255, 236, 217, 75);
                      btn = Text("OFF");
                    } else if (ledState == 1) {
                      ledState = 0;
                      iconColor = const Color.fromARGB(255, 82, 80, 80);
                      btn = Text("ON");
                    }
                  });
                },
                child: btn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
