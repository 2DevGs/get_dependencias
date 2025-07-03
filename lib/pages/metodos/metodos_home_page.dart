import 'package:flutter/material.dart';

class MetodosHomePage extends StatelessWidget {

  const MetodosHomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metodos home Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/put');
              },
              child: const Text('Put'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/lazyPut');
              },
              child: const Text('lazyPut'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/putAsync');
              },
              child: const Text('putAsync'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/create');
              },
              child: const Text('Create'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/metodos/update');
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}