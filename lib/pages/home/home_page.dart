import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  Widget build(BuildContext context) {
    var nome = GetStorage().read('nameKey')??'';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome),
            ElevatedButton(
              onPressed: () {
                GetStorage().write('nameKey', 'Dario P MAciel');
                setState(() {
                  
                });
              },
              child: const Text('Gravar Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
