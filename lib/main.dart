import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'İlham Ver'),
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
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: ekranYuksekligi / 100, bottom: ekranYuksekligi / 100),
            child: SizedBox(
                width: ekranGenisligi / 4,
                child: Image.asset("resimler/stevejobs.png")),
          ),
          Text(
            "Steve Jobs",
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi / 25),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
                left: ekranGenisligi / 100, right: ekranGenisligi / 100),
            child: Text("Hayatta pek çok şeyi yapmak için şans bulamıyoruz bunun için yaptığımız her bir iş mükemmel olmalı.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: ekranGenisligi / 25)),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: ekranYuksekligi/100),
            child: SizedBox(
              width: ekranGenisligi/2,
              height: ekranYuksekligi/15,
              child: ElevatedButton(
                child: Text("İLHAM VER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ekranGenisligi/25
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  print("İlham verildi.");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
