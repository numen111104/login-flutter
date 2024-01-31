import 'package:flutter/material.dart';

class LatihanButton extends StatelessWidget {
  const LatihanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Container(
              child: ElevatedButton(
                  onPressed: (){},
                  child: const Text('TOMBOL NUKLIR')),
            ),
            Container(
              child: TextButton(
                onPressed: () {  },
                child: const Text("Tombol BIASA")
              ),
            ),
            Container(
              child: OutlinedButton(onPressed:() {} , child: const Text("Tombol Outline"),),
            ),
            Container(
            child: IconButton(onPressed:() {} , icon: const Icon(Icons.construction),
            tooltip: "Tekan untuk melihat konstruksi",),
            )
          ],
        ),
      ),
    );
  }
}
