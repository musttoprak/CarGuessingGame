import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("kullanıcı adı"),
        toolbarHeight: 80,
        leading: const CircleAvatar(
          backgroundColor: Colors.lime,
          child: Text("M"),
        ),
        actions: [
             Icon(Icons.settings)
        ],
      ),
      body: singleChildKullan()
      );
  }
}


ListView singleChildKullan() {
    return ListView(
      children: [
        Container(
          height: 80,
          width: 80,
          alignment: Alignment.center ,
          child:const Text("kategori 1"),
        )
        
      ],
    );
  }