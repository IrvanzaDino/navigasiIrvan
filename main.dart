import 'package:flutter/material.dart';
import 'package:flutter_navigasi/main2.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Halaman utama";
  var body = "Belum ada isi pada body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawee Header'),
            ),
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.adjust_sharp),
              title: Text("My Book"),
            ),
            ListTile(
              leading: Icon(Icons.adjust_sharp),
              title: Text("Library"),
            ),
            ListTile(
              leading: Icon(Icons.adjust_sharp),
              title: Text("Logout"),
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "Halaman utama";
          body = "Belum ada isi pada body";
        });

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MyWidget(),
          ),
        );
      }),
      body: Text(body),
    );
  }
}
