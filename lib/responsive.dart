import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size ukuranLayar = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "MediaQuery: ${ukuranLayar.width.toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.white, fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "LayoutBuilder: ${constraints.maxWidth}",
                      style: const TextStyle(color: Colors.white, fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
              flex: 1,
              child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constrainst) {
              return Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "MediaQuery: ${ukuranLayar.width.toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.white, fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "LayoutBuilder: ${constrainst.maxWidth}",
                      style: const TextStyle(color: Colors.white, fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
