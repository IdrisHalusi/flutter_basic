import 'package:flutter/material.dart';
import 'package:flutter_basic/mahasiswa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 20, 174, 49)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome To Home Flutter Idris'),
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
  bool isLoading = true;

  List<Mahasiswa> ListMahasiswa =[
    Mahasiswa(nim: 123, nama: 'tokyo', address: 'Gorontalo'),
    Mahasiswa(nim: 123, nama: 'Honda', address: 'Gorontalo'),
    Mahasiswa(nim: 123, nama: 'Suzuki', address: 'Gorontalo'),
    Mahasiswa(nim: 123, nama: 'Toyota', address: 'Gorontalo'),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue, child: Text('${ListMahasiswa[index].nim})'),
              ),
            title: Text('${ListMahasiswa[index].nama})'),
            subtitle: Text('${ListMahasiswa[index].address})'),
            ),
          );
        },
        itemCount: 20,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
