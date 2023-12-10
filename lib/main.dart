import 'package:flutter/material.dart';

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
      ),
      home: const MyHomePage(title: 'Midl'),
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Midl"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_applications),
            tooltip: 'Settings',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Another Settings',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: const Image(
                  height: 200,
                  width: 200,
                  image: NetworkImage(
                      "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")),
            ),
            const Text('Melchior'),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  backgroundColor: const Color(0xFF3573ac),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: const Text(
                  'Mon profil',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  backgroundColor: const Color(0xFF73cbab),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: const Text(
                  'Mes recherches',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Spacer(),
            ]),
            Container(
                margin: const EdgeInsets.all(10.0),
                child: const Text('Améliorez votre recrutement avec nos services')
            ),
            Container(
              color: Colors.grey,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Text('BOOST'),
                            Icon(
                              Icons.rocket_launch,
                              size: 20,
                            ),
                            Text('Mettez votre annonce en avant pendant 24h'),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            Text('MESSAGE INSTANTANÉ'),
                            Icon(
                              Icons.send,
                              size: 20,
                            ),
                            Text(
                                'N\'attendez pas de matcher pour envoyer un message'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                    text: "PREMIUM ",
                                    style: TextStyle(color: Colors.white)),
                                WidgetSpan(
                                  child: Icon(Icons.star,
                                      size: 14, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            'Débloquez nos options pour prendre le contrôle',
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white,
                              child: const Text('Bientôt disponible!',
                                  style: TextStyle(color: Colors.black)),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
