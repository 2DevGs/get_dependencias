import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/basico');
              }, 
              child: const Text('Basico'),
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/metodos');
              }, 
              child: const Text('Métodos'),
            ),
          ],
        ),
      ),
    );
  }
}