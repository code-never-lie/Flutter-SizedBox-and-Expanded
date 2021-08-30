import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _Textcontroller;
  @override
  void initState() {
    super.initState();
    _Textcontroller = TextEditingController();
    _Textcontroller.text = '7';
  }

  @override
  void dispose() {
    _Textcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sized Box"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: _Textcontroller,
            ),
            SizedBox(
              // Expended
              height: 500.0,
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                          "${(index + 1) * int.parse(_Textcontroller.text)}"),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.done),
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
