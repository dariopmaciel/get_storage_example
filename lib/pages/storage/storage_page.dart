import 'package:flutter/material.dart';
import 'package:get_extorage_example/core/storage/storage.dart';
import 'package:get_storage/get_storage.dart';

class StoragePage extends StatefulWidget {

  const StoragePage({super.key});

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final storage = Storage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stoage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('Container padrão: ${storage.name.val}'),
            Text('Container padrão: ${storage.name}'),
            ElevatedButton(
              onPressed: () {
                // storage.name.val = 'Dario P MAciel';
                storage.name = 'Dario P MAciel';
                setState(() {});
              },
              child: const Text('Gravar Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                // storage.name.val = '';
                storage.name = '';
                setState(() {});
              },
              child: const Text('Remover Nome'),
            ),
            const SizedBox(height: 30), //!------------------
            // Text('Container segundario: ${storage.nameGetX.val}'),
            Text('Container segundario: ${storage.nameGetX}'),
            ElevatedButton(
              onPressed: () {
                // storage.nameGetX.val = 'Dario P MAciel - GetX';
                storage.nameGetX = 'Dario P MAciel - GetX';
                setState(() {});
              },
              child: const Text('Gravar Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                // storage.nameGetX.val = '';
                storage.nameGetX  = '';
                setState(() {});
              },
              child: const Text('Remover Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
