import 'package:app1_melchior_delescluse/MidlPage/widgets/header.dart';
import 'package:flutter/material.dart';

class Midl extends StatefulWidget {
  const Midl({super.key});

  @override
  State<Midl> createState() => _MidlState();
}

class _MidlState extends State<Midl> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'ArialRounded',
        ),
        child: SafeArea(
          child: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Header(),
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
                              borderRadius: BorderRadius.circular(20.0)),
                          backgroundColor: const Color(0xFF3573ac),
                        ),
                        icon: const Icon(
                          Icons.person_2_outlined,
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
                              borderRadius: BorderRadius.circular(20.0)),
                          backgroundColor: const Color(0xFF73cbab),
                        ),
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Mes recherches',
                          style: TextStyle(
                              color: Colors.white,
                            fontFamily: 'ArialRounded'
                          ),

                        ),
                      ),
                      const Spacer(),
                    ]),
                    Container(
                        margin: const EdgeInsets.all(10.0),
                        child: const Text(
                            'Améliorez votre recrutement avec nos services')),
                    Container(
                      color: const Color(0xFFF2F2F2),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      backgroundColor: const Color(0xffa3e8d5),
                                    ),
                                    onPressed: () {},
                                    child: const Column(
                                      children: [
                                        Text(
                                          'BOOST',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                        Icon(
                                          Icons.person_2_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Mettez votre annonce en avant pendant 24h',
                                          style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 10),
                                        ),
                                      ],
                                    )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 120,
                                height: 120,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      backgroundColor: const Color(0xffffffff),
                                    ),
                                    onPressed: () {},
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'MESSAGE INSTANTANÉ',
                                          style: TextStyle(
                                              color: Color(0xFF000000)),
                                        ),
                                        Icon(
                                          Icons.person_2_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'N\'attendez pas de matcher pour envoyer un message',
                                          style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 10),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          DecoratedBox(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFF000000)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "PREMIUM ",
                                            style:
                                                TextStyle(color: Colors.white)),
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
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        backgroundColor:
                                            const Color(0xffffffff),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Bientôt Disponible !',
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 10),
                                      ),
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
              bottomNavigationBar: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home,
                          size: 40,
                          color: Color(0xFF707070),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.grid_view_outlined,
                          size: 40,
                          color: Color(0xFF646464),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat_bubble,
                          size: 40,
                          color: Color(0xFF646464),
                        )),
                    InkWell(
                      onTap: () {},
                      customBorder: const CircleBorder(),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              NetworkImage('https://picsum.photos/200'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              // This trailing comma makes auto-formatting nicer for build methods.
              ),
        ));
  }
}
