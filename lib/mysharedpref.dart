import 'package:app1_melchior_delescluse/MidlPage/midlpage.dart';
import 'package:app1_melchior_delescluse/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesExample extends StatefulWidget {
  const SharedPreferencesExample({super.key});

  @override
  State<SharedPreferencesExample> createState() =>
      _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {
  final _title = "Shared Preferences DELESCLUSE Melchior";
  final String _myPreference = "myPreference";
  TextEditingController prefEditingController = TextEditingController();
  TextEditingController displayPrefController = TextEditingController();

  String myPreference = "SN2";

  @override
  void initState() {
    getMyPreference();
    super.initState();
  }

  @override
  void dispose() {
    prefEditingController.dispose();
    displayPrefController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.titleMedium!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          _title,
          style: textStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10, top: 200),
        child: Column(
          children: <Widget>[
            _getText(prefEditingController, "Entrer une phrase...", false),
            const SizedBox(height: 10),
            _getText(
                displayPrefController, "Aucune préférence enregistrée", true)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          saveMyPref(pref: prefEditingController.text);
        },
      ),
    );
  }

  Widget _getText(
      TextEditingController tfController, String placeHolder, bool isReadOnly) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
            child: TextField(
              controller: tfController,
              autofocus: false,
              readOnly: isReadOnly,
              style: Theme.of(context).textTheme.bodyLarge,
              decoration: InputDecoration(
            filled: true,
            border: InputBorder.none,
            fillColor: Theme.of(context).secondaryHeaderColor,
            hintText: placeHolder,
            contentPadding: const EdgeInsets.all(6.0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(6.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 1),
              borderRadius: BorderRadius.circular(6.0),
            ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void saveMyPref({required String pref}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString(_myPreference, pref);
      displayPrefController.text = pref;
    });
  }

  Future<void> getMyPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString(_myPreference) != null) {
      setState(() {
        myPreference = prefs.getString(_myPreference)!;
        displayPrefController.text = myPreference;
      });
    }
  }
}
