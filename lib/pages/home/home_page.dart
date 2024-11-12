import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final storage = GetStorage();
  final storageGetX = GetStorage('JornadaGetX');
  late final VoidCallback listen;

  @override
  void initState() {
    listen = storage.listen(
      () {
        debugPrint('A Storage foi alterada!');
      },
    );

    storage.listenKey(
      'nameKey',
      (value) {
        debugPrint('Chave nameKey alterada $value');
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    listen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var nome = storage.read('nameKey') ?? '';
    var nomeGetX = storageGetX.read('nameKey') ?? '';
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
                storage.write('nameKey', 'Dario P MAciel');
                setState(() {});
              },
              child: const Text('Gravar Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                storage.remove('nameKey');
                setState(() {});
              },
              child: const Text('Remover Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                listen();
              },
              child: const Text('Remover Listen'),
            ),
            const SizedBox(height: 30), //!------------------
            Text('GetX: $nomeGetX'),
            ElevatedButton(
              onPressed: () {
                storageGetX.write('nameKey', 'Dario P MAciel - GetX');
                setState(() {});
              },
              child: const Text('Gravar Nome'),
            ),
            ElevatedButton(
              onPressed: () {
                storageGetX.remove('nameKey');
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
