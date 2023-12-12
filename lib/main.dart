import 'package:app1_melchior_delescluse/MidlPage/midlpage.dart';
import 'package:flutter/material.dart';

import 'mysharedpref.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
                fontFamily: 'ArialRounded',
              ),
              bodyMedium: TextStyle(
                fontFamily: 'ArialRounded',
              ),
              bodySmall: TextStyle(
                fontFamily: 'ArialRounded',
              ),
              headlineLarge: TextStyle(
                fontFamily: 'ArialRounded',
              ),
              headlineMedium: TextStyle(
                fontFamily: 'ArialRounded',
              ),
              headlineSmall: TextStyle(
                fontFamily: 'ArialRounded',
              ))),
      home: const MyHomePage(title: 'Accueil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          'Accueil',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello',
              style: TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SharedPreferencesExample(),
                        ),
                      );
                    },
                    child: const Text('Mes préférences')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Midl(),
                        ),
                      );
                    },
                    child: const Text('Midl')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
