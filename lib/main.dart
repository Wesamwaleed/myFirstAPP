import 'package:flutter/material.dart';

void main() {
  runApp(const wesam());
}

class wesam extends StatefulWidget {
  const wesam({super.key});

  @override
  State<wesam> createState() => _wesamState();
}

class _wesamState extends State<wesam> {
  String namee = "";
  TextEditingController name = TextEditingController();
  int lentxt = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 91, 108, 241),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.5, bottom: 10.5),
                  child: Text(
                    "Enter your name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.3,
                ),
                Divider(
                  height: 20.5,
                  color: Color.fromARGB(255, 214, 11, 11),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.5)),
                    prefixIcon: Icon(Icons.person_4),
                    labelText: "Name",
                    hintText: "Your name is",
                  ),
                  controller: name,
                ),
                SizedBox(
                  height: 20.5,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      lentxt = name.text.toString().length;
                    });
                  },
                  child: ListTile(
                    leading: Text("length"),
                    trailing: Text("$lentxt"),
                  ),
                ),
                Divider(
                  height: 20.5,
                  color: Color.fromARGB(255, 214, 11, 11),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      namee = name.text = "";
                    });
                  },
                  child: ListTile(
                    title: Text(
                      "remove",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
