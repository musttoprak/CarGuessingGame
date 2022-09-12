import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text("kullanıcı adı"),
          toolbarHeight: 80,
          leading: const CircleAvatar(
            backgroundColor: Colors.lime,
            child: Text("M"),
          ),
          actions: [Icon(Icons.settings)],
        ),
        body: singleChildKullan());
  }
}

ListView singleChildKullan() {
  List<String> _kategoriler=["süreli","süresiz","random"];
  return ListView.builder(
    itemBuilder: (context, index) =>Card(    
      color: Colors.blue.shade100,
      margin: const EdgeInsets.all(8),
      child: ListTile(  
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text(_kategoriler[index]),
            subtitle: Text("kategori adı: ${_kategoriler[index]}"),
            trailing: Icon(Icons.real_estate_agent),

          ),
    ) ,
    itemCount: _kategoriler.length,
  );
}

