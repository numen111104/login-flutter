import 'package:flutter/material.dart';

class LearnScaffold extends StatelessWidget {
  const LearnScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'First Screen',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: const Center(
          child: Text(
            "Laundri Aplikaci",
            style: TextStyle(color: Colors.blue, fontSize: 23.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.blue,),
    onPressed: (){}, 
    ),
    );
  }
}
