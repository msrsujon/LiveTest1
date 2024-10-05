import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  final TextEditingController _textInputController1 = TextEditingController();
  final TextEditingController _textInputController2 = TextEditingController();

  bool widgetVisible = false;
  String resultText = '';

  void calculateLovePercentage() {
    setState(() {
      widgetVisible = true;
      Random random = Random();
      int randomNumber =
          random.nextInt(51) + 50; // Generates a number between 50 and 100
      resultText = '$randomNumber%';
    });
  }

  void tryAgain() {
    setState(() {
      widgetVisible = false;
      _textInputController1.clear();
      _textInputController2.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Love❤ Calculator❤',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/lovee.jpg',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(
                            color: Colors.red.shade900,
                            fontWeight: FontWeight.w500),
                      ),
                      controller: _textInputController1,
                    ),
                    const SizedBox(height: 10),
                    const Icon(
                      Icons.favorite,
                      size: 60,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: 'Enter Your Crush Name',
                        hintStyle: TextStyle(
                            color: Colors.red.shade900,
                            fontWeight: FontWeight.w500),
                      ),
                      controller: _textInputController2,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.pink.shade400,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: calculateLovePercentage,
                          child: const Text('Calculate'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.pink.shade400,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: tryAgain,
                          child: const Text('Try Again'),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: widgetVisible,
                      child: Stack(
                        children: [
                          const Positioned(
                            child: Icon(
                              Icons.favorite,
                              size: 155,
                              color: Colors.red,
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 40,
                            child: Text(
                              resultText,
                              style: const TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
